<?php

namespace App\Repository;

use App\Http\Controllers\CloudinaryStorage;
use Exception;
use App\Models\User;
use App\Models\Book;
use App\Models\BookDetailStatus;
use App\Models\LogActivity;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Validator;

class BookRepository
{
	 function getData($status, $n, $page)
		{
			$data = Book::with('author', 'gmd', 'contentType', 'mediaType', 'carrierType', 'publisher', 'place', 'subject', 'docLanguage', 'label', 'bookDetailStatus.itemStatus')->orderBy('created_at', 'desc');

			if (request('search')) {
				$keyword = request('search');
				$data->where([
					//['status', $status],
					['title', 'LIKE', "%$keyword%"],
				])->orWhere([
					//['status', $status],
					['id', 'LIKE', "%$keyword%"],
				]);
			}
			if (request()->has('doclanguage')&& request('doclanguage') !== 'undefined') {
				$languages = explode(',', request('doclanguage'));
				$data->whereIn('doc_languages_id', $languages);
			}

	 if (request('callnumber') && request('callnumber') !== 'undefined') {
			$callNumbers = explode(',', request('callnumber'));

			// Membuat array untuk menyimpan kriteria pencarian awalan
			$callNumberPrefixes = [];

			// Loop melalui setiap angka yang diberikan
			foreach ($callNumbers as $callNumber) {
				// Menambahkan kriteria pencarian untuk setiap angka dengan menambahkan tanda '%'
				$callNumberPrefixes[] = $callNumber . '%';
			}

			// Menerapkan kriteria pencarian menggunakan WHERE IN dengan array kriteria pencarian awalan
			$data->where(function ($query) use ($callNumberPrefixes) {
				foreach ($callNumberPrefixes as $prefix) {
					$query->orWhere('call_number', 'LIKE', $prefix);
				}
			});
    }
			if (request('subject')&& request('subject') !== 'undefined') {
				$languages = explode(',', request('subject'));
				$data->whereIn('subjects_id', $languages);
			}

			if (request('gmdSearch')&& request('gmdSearch') !== 'undefined') {
				$languages = explode(',', request('gmdSearch'));
				$data->whereIn('gmds_id', $languages);
			}

			if (request('gmdSearch')&& request('gmdSearch') !== 'undefined') {
				$languages = explode(',', request('gmdSearch'));
				$data->whereIn('gmds_id', $languages);
			}

			if (request('label')&& request('label') !== 'undefined') {
				$languages = explode(',', request('label'));
				$data->whereIn('labels_id', $languages);
			}

			if ($page) {
				$data = $data->paginate($n, ['*'], 'page', $page);
			} else {
				$data = $data->get();
			}
			return $data;
    }


	function getCode()
	{
		// Ambil entri terakhir berdasarkan id
		$number = Book::orderBy('id', 'desc')->first();

		if ($number) {
			// Ambil bagian numerik dari ID terakhir, setelah 'BDN'
			$slice = substr($number->id, 3);

			// Tambahkan 1 ke bagian numerik tersebut
			$sum = (int)$slice + 1;

			// Format angka menjadi lima digit dengan awalan 'BDN'
			$new_number = 'BDN' . sprintf("%05d", $sum);
		} else {
			// Jika tidak ada entri sebelumnya, mulai dengan 'BDN00001'
			$new_number = 'BDN' . sprintf("%05d", 1);
		}

		return $new_number;
	}



    function getSingleData($id)
    {
        $data = Book::with('author', 'gmd', 'contentType', 'mediaType', 'carrierType', 'publisher', 'place', 'subject', 'docLanguage', 'label', 'bookDetailStatus.itemStatus')->find($id);
        return $data;
    }

    function add()
    {
        $validator = Validator::make(request()->all(), [
            'id' => 'required',
            'title' => 'required',
            'authors_id' => 'required',
            'gmds_id'  => 'required',
            'publishers_id'  => 'required',
            'publisher_year'  => 'required',
            'places_id'  => 'required',
            'file'  => 'required',
            'opac'  => 'required',
            'labels_id'  => 'required',
            'current_stock' => 'required',
            'isbn_issn'  => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        if (request('file')) {
            $image  = request('file');
            $result = CloudinaryStorage::upload($image->getRealPath(), $image->getClientOriginalName());
            $data = Book::create([
                'id' => request('id'),
                'title' => request('title'),
                'authors_id' => request('authors_id'),
                'statement_of_responsibility' => request('statement_of_responsibility'),
                'edition' => request('edition'),
                'specific_detail_info' => request('specific_detail_info'),
                'gmds_id' => request('gmds_id'),
                'isbn_issn' => request('isbn_issn'),
                'content_types_id' => request('content_types_id'),
                'media_types_id' => request('media_types_id'),
                'carrier_types_id' => request('carrier_types_id'),
                'publishers_id' => request('publishers_id'),
                'publisher_year' => request('publisher_year'),
                'collation' => request('collation'),
                'series_title' => request('series_title'),
                'call_number' => request('call_number'),
                'places_id' => request('places_id'),
                'subjects_id' => request('subjects_id'),
                'doc_languages_id' => request('doc_languages_id'),
                'desc' => request('desc'),
                'opac' => request('opac'),
                'labels_id' => request('labels_id'),
                'file' => $result,
                'current_stock' => request('current_stock'),
            ]);

            $isbn_issn = request('isbn_issn');
            $current_stock = request('current_stock');

            for ($i = 1; $i <= $current_stock; $i++) {
                $new_isbn_issn = $isbn_issn . str_pad($i, 3, '0', STR_PAD_LEFT);
                BookDetailStatus::create([
                    'isbn_issn' => $new_isbn_issn,
                    'item_statuses_id' => 'IS001',
                    'books_id' => $data->id,
                ]);
            }
        }
        return $data;
    }

    function edit($id)
    {
        $validator = Validator::make(request()->all(), [
            'id' => 'required',
            'title' => 'required',
            'authors_id' => 'required',
            'gmds_id'  => 'required',
            'publishers_id'  => 'required',
            'publisher_year'  => 'required',
            'places_id'  => 'required',
            'opac'  => 'required',
            'labels_id'  => 'required',
            'current_stock' => 'required',
            'isbn_issn'  => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        $data = Book::find($id);

        $oldFileUrl = $data->file;
        $fileUrl = request('file');
        $oldCurrentStock = $data->current_stock;
        $oldIsbnIssn = $data->isbn_issn;

        if ($oldFileUrl === $fileUrl) {
            $data->update(request()->except(['id', 'file']));
        } else {
            $urlParts = explode('/', $data->file);
            $publicId = end($urlParts);
            $deleted = CloudinaryStorage::delete($publicId);

            if ($deleted) {
                $image  = request('file');
                $result = CloudinaryStorage::upload($image->getRealPath(), $image->getClientOriginalName());

                $data->update(array_merge(
                    request()->except(['id', 'file']),
                    ['file' => $result]
                ));
            }
        }

        $isbn_issn = request('isbn_issn');
        $current_stock = request('current_stock');

        if ($data->isbn_issn != $oldIsbnIssn || $data->current_stock < $oldCurrentStock) {
            BookDetailStatus::where('books_id', $id)->delete();
            for ($i = 1; $i <= $current_stock; $i++) {
                $new_isbn_issn = $isbn_issn . str_pad($i, 3, '0', STR_PAD_LEFT);
                BookDetailStatus::create([
                    'isbn_issn' => $new_isbn_issn,
                    'item_statuses_id' => 'IS001',
                    'books_id' => $id,
                ]);
            }
        } else if ($data->current_stock > $oldCurrentStock) {
            for ($i = $oldCurrentStock + 1; $i <= $current_stock; $i++) {
                $new_isbn_issn = $isbn_issn . str_pad($i, 3, '0', STR_PAD_LEFT);
                BookDetailStatus::create([
                    'isbn_issn' => $new_isbn_issn,
                    'item_statuses_id' => 'IS001',
                    'books_id' => $id,
                ]);
            }
        }

        return $data;
    }

    function delete($id)
    {
        BookDetailStatus::where('books_id', $id)->delete();
        $data = Book::find($id)->delete();
    }
}
