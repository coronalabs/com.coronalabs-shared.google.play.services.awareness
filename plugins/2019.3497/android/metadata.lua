local metadata =
{
    plugin =
    {
        format = 'jar',
        manifest = 
        {
            permissions = {},
            usesPermissions = {
                -- Permissions needed for Snapshot API and Fence API (from Awareness Library)
                "com.google.android.gms.permission.ACTIVITY_RECOGNITION",
                "android.permission.ACCESS_FINE_LOCATION",
            },
            usesFeatures = {},
            applicationChildElements = 
            {
                -- Meta-data for base logic layer
                [[
                <meta-data android:name="usesGooglePlayServicesComponentLocation" android:value="true" />
                ]],
            },
        }
    },
    coronaManifest = {
        dependencies = {
            ["shared.google.play.services.location"] = "com.coronalabs",
        },
    },
}

return metadata
