#include <windows.h>
#include <ole2.h>
#include "inspectable.h"
#include "AsyncInfo.h"
#include "EventToken.h"
#include "windowscontracts.h"
#include "Windows.Foundation.h"
#include "Windows.System.h"

// vtable_start 3
MIDL_INTERFACE("D8F579AB-402D-4B8E-82D9-5D63B1065C68")
IMetaDataTables : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE GetStringHeapSize(
        /* [out] */ ULONG * pcbStrings) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetBlobHeapSize(
        /* [out] */ ULONG * pcbBlobs) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetGuidHeapSize(
        /* [out] */ ULONG * pcbGuids) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetUserStringHeapSize(
        /* [out] */ ULONG * pcbUserStrings) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetNumTables(
        /* [out] */ ULONG * pcTables) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetTableIndex(
        /* [in] */ ULONG token,
        /* [out] */ ULONG * pixTbl) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetTableInfo(
        /* [in] */ ULONG ixTbl,
        /* [out] */ ULONG * pcbRow,
        /* [out] */ ULONG * pcRows,
        /* [out] */ ULONG * pcCols,
        /* [out] */ ULONG * piKey,
        /* [string][out] */ LPCSTR * ppName) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetColumnInfo(
        /* [in] */ ULONG ixTbl,
        /* [in] */ ULONG ixCol,
        /* [out] */ ULONG * poCol,
        /* [out] */ ULONG * pcbCol,
        /* [out] */ ULONG * pType,
        /* [string][out] */ LPCSTR * ppName) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetCodedTokenInfo(
        /* [in] */ ULONG ixCdTkn,
        /* [out] */ ULONG * pcTokens,
        /* [size_is][size_is][out] */ const ULONG **ppTokens,
        /* [string][out] */ LPCSTR *ppName) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetRow(
        /* [in] */ ULONG ixTbl,
        /* [in] */ ULONG rid,
        /* [out] */ const BYTE *ppRow) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetColumn(
        /* [in] */ ULONG ixTbl,
        /* [in] */ ULONG ixCol,
        /* [in] */ ULONG rid,
        /* [out] */ ULONG * pVal) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetString(
        /* [in] */ ULONG ixString,
        /* [string][out] */ LPCSTR * ppString) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetBlob(
        /* [in] */ ULONG ixBlob,
        /* [out] */ ULONG * pcbData,
        /* [size_is][size_is][out] */ const BYTE **ppData) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetGuid(
        /* [in] */ ULONG ixGuid,
        /* [out] */ const GUID **ppGUID) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetUserString(
        /* [in] */ ULONG ixUserString,
        /* [out] */ ULONG * pcbData,
        /* [size_is][size_is][out] */ const BYTE **ppData) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetNextString(
        /* [in] */ ULONG ixString,
        /* [out] */ ULONG * pNext) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetNextBlob(
        /* [in] */ ULONG ixBlob,
        /* [out] */ ULONG * pNext) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetNextGuid(
        /* [in] */ ULONG ixGuid,
        /* [out] */ ULONG * pNext) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetNextUserString(
        /* [in] */ ULONG ixUserString,
        /* [out] */ ULONG * pNext) = 0;
};