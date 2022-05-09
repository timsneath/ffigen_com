#include <windows.h>
#include <ole2.h>
#include "inspectable.h"
#include "AsyncInfo.h"
#include "EventToken.h"
#include "windowscontracts.h"
#include "Windows.Foundation.h"
#include "Windows.System.h"

// vtable_start 22
MIDL_INTERFACE("BADB5F70-58DA-43a9-A1C6-D74819F19B15")
IMetaDataTables2 : public IMetaDataTables
{
public:
    virtual HRESULT STDMETHODCALLTYPE GetMetaDataStorage(
        /* [size_is][size_is][out] */ const BYTE **ppvMd,
        /* [out] */ ULONG *pcbMd) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetMetaDataStreamInfo(
        /* [in] */ ULONG ix,
        /* [string][out] */ LPCSTR * ppchName,
        /* [size_is][size_is][out] */ const BYTE **ppv,
        /* [out] */ ULONG *pcb) = 0;
};