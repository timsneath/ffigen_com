#include <windows.h>
#include <ole2.h>
#include "inspectable.h"
#include "AsyncInfo.h"
#include "EventToken.h"
#include "windowscontracts.h"
#include "Windows.Foundation.h"
#include "Windows.System.h"
#include "rometadataapi.h"

// vtable_start 3
MIDL_INTERFACE("EE62470B-E94B-424E-9B7C-2F00C9249F93")
IMetaDataAssemblyImport : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE GetAssemblyProps(
        /* [in] */ mdAssembly mda,
        /* [size_is][size_is][out] */ const BYTE **ppbPublicKey,
        /* [out] */ ULONG *pcbPublicKey,
        /* [out] */ ULONG *pulHashAlgId,
        /* [annotation][length_is][size_is][string][out] */
        _Out_writes_to_opt_(cchName, *pchName) LPWSTR szName,
        /* [in] */ ULONG cchName,
        /* [out] */ ULONG *pchName,
        /* [out] */ ULONG *pMetaData,
        /* [out] */ DWORD *pdwAssemblyFlags) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetAssemblyRefProps(
        /* [in] */ mdAssemblyRef mdar,
        /* [size_is][size_is][out] */ const BYTE **ppbPublicKeyOrToken,
        /* [out] */ ULONG *pcbPublicKeyOrToken,
        /* [annotation][length_is][size_is][string][out] */
        _Out_writes_to_opt_(cchName, *pchName) LPWSTR szName,
        /* [in] */ ULONG cchName,
        /* [out] */ ULONG *pchName,
        /* [out] */ ULONG *pMetaData,
        /* [size_is][size_is][out] */ const BYTE **ppbHashValue,
        /* [out] */ ULONG *pcbHashValue,
        /* [out] */ DWORD *pdwAssemblyRefFlags) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetFileProps(
        /* [in] */ mdFile mdf,
        /* [annotation][length_is][size_is][string][out] */
        _Out_writes_to_opt_(cchName, *pchName) LPWSTR szName,
        /* [in] */ ULONG cchName,
        /* [out] */ ULONG * pchName,
        /* [size_is][size_is][out] */ const BYTE **ppbHashValue,
        /* [out] */ ULONG *pcbHashValue,
        /* [out] */ DWORD *pdwFileFlags) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetExportedTypeProps(
        /* [in] */ mdExportedType mdct,
        /* [annotation][length_is][size_is][string][out] */
        _Out_writes_to_opt_(cchName, *pchName) LPWSTR szName,
        /* [in] */ ULONG cchName,
        /* [out] */ ULONG * pchName,
        /* [out] */ mdToken * ptkImplementation,
        /* [out] */ mdTypeDef * ptkTypeDef,
        /* [out] */ DWORD * pdwExportedTypeFlags) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetManifestResourceProps(
        /* [in] */ mdManifestResource mdmr,
        /* [annotation][length_is][size_is][string][out] */
        _Out_writes_to_opt_(cchName, *pchName) LPWSTR szName,
        /* [in] */ ULONG cchName,
        /* [out] */ ULONG * pchName,
        /* [out] */ mdToken * ptkImplementation,
        /* [out] */ DWORD * pdwOffset,
        /* [out] */ DWORD * pdwResourceFlags) = 0;

    virtual HRESULT STDMETHODCALLTYPE EnumAssemblyRefs(
        /* [out][in] */ HCORENUM * phEnum,
        /* [length_is][size_is][out] */ mdAssemblyRef rAssemblyRefs[],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG * pcTokens) = 0;

    virtual HRESULT STDMETHODCALLTYPE EnumFiles(
        /* [out][in] */ HCORENUM * phEnum,
        /* [length_is][size_is][out] */ mdFile rFiles[],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG * pcTokens) = 0;

    virtual HRESULT STDMETHODCALLTYPE EnumExportedTypes(
        /* [out][in] */ HCORENUM * phEnum,
        /* [length_is][size_is][out] */ mdExportedType rExportedTypes[],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG * pcTokens) = 0;

    virtual HRESULT STDMETHODCALLTYPE EnumManifestResources(
        /* [out][in] */ HCORENUM * phEnum,
        /* [length_is][size_is][out] */ mdManifestResource rManifestResources[],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG * pcTokens) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetAssemblyFromScope(
        /* [out] */ mdAssembly * ptkAssembly) = 0;

    virtual HRESULT STDMETHODCALLTYPE FindExportedTypeByName(
        /* [string][in] */ LPCWSTR szName,
        /* [in] */ mdToken mdtExportedType,
        /* [out] */ mdExportedType * ptkExportedType) = 0;

    virtual HRESULT STDMETHODCALLTYPE FindManifestResourceByName(
        /* [string][in] */ LPCWSTR szName,
        /* [out] */ mdManifestResource * ptkManifestResource) = 0;

    virtual void STDMETHODCALLTYPE CloseEnum(
        /* [in] */ HCORENUM hEnum) = 0;

    virtual HRESULT STDMETHODCALLTYPE FindAssembliesByName(
        /* [unique][string][in] */ LPCWSTR szAppBase,
        /* [unique][string][in] */ LPCWSTR szPrivateBin,
        /* [string][in] */ LPCWSTR szAssemblyName,
        /* [length_is][size_is][out] */ IUnknown * ppIUnk[],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG * pcAssemblies) = 0;
};
