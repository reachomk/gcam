.class final Lcom/android/camera/location/FusedLocationController;
.super Ljava/lang/Object;
.source "FusedLocationController.java"

# interfaces
.implements Lcom/android/camera/location/LocationController;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/location/LocationListener;


# static fields
.field private static final GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

.field private static final LOCATION_REQUEST_INTERVAL_MS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final context:Landroid/content/Context;

.field private final failedListener:Lcom/android/camera/location/LocationController$OnConnectionFailedListener;

.field private isLocationUpdateCallbackRegistered:Z

.field private recordLocation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "FusedLocProvider"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/location/FusedLocationController;->TAG:Ljava/lang/String;

    .line 45
    const/16 v0, 0x14

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->secondsToMillis(I)I

    move-result v0

    sput v0, Lcom/android/camera/location/FusedLocationController;->LOCATION_REQUEST_INTERVAL_MS:I

    .line 71
    const-string v0, "content://com.google.settings/partner"

    .line 72
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/location/FusedLocationController;->GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    .line 71
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/camera/location/LocationController$OnConnectionFailedListener;)V
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/location/FusedLocationController;->isLocationUpdateCallbackRegistered:Z

    .line 143
    iput-object p2, p0, Lcom/android/camera/location/FusedLocationController;->failedListener:Lcom/android/camera/location/LocationController$OnConnectionFailedListener;

    .line 144
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 145
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/location/FusedLocationController;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 149
    iput-object p1, p0, Lcom/android/camera/location/FusedLocationController;->context:Landroid/content/Context;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/location/FusedLocationController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/location/FusedLocationController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lcom/android/camera/location/FusedLocationController;->isAllowedToUseLocation(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/location/FusedLocationController;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/camera/location/FusedLocationController;->recordLocation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/location/FusedLocationController;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/location/FusedLocationController;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/location/FusedLocationController;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/location/FusedLocationController;->startReceivingLocationUpdates()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/location/FusedLocationController;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/location/FusedLocationController;->stopReceivingLocationUpdates()V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/camera/location/FusedLocationController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getUseLocationForServices(Landroid/content/Context;)I
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 112
    :try_start_0
    sget-object v1, Lcom/android/camera/location/FusedLocationController;->GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "use_location_for_services"

    aput-object v8, v4, v5

    const/4 v5, 0x0

    .line 113
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 119
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 125
    :cond_0
    if-eqz v1, :cond_1

    .line 126
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_1
    :goto_0
    if-nez v7, :cond_3

    .line 138
    :goto_1
    return v6

    .line 122
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 123
    :goto_2
    :try_start_2
    sget-object v2, Lcom/android/camera/location/FusedLocationController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get \'Use My Location\' setting"

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    if-eqz v1, :cond_1

    .line 126
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_2

    .line 126
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 134
    :cond_3
    :try_start_3
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    :goto_4
    move v6, v0

    .line 138
    goto :goto_1

    .line 136
    :catch_1
    move-exception v0

    move v0, v6

    goto :goto_4

    .line 125
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_3

    .line 122
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private static isAllowedToUseLocation(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 87
    .line 1094
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.gsf.GOOGLE_APPS_LOCATION_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000

    .line 1095
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1098
    if-eqz v2, :cond_2

    move v2, v1

    .line 87
    :goto_0
    if-eqz v2, :cond_0

    .line 88
    invoke-static {p0}, Lcom/android/camera/location/FusedLocationController;->getUseLocationForServices(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    .line 1098
    goto :goto_0
.end method

.method private final startReceivingLocationUpdates()V
    .locals 4

    .prologue
    .line 266
    sget-object v0, Lcom/android/camera/location/FusedLocationController;->TAG:Ljava/lang/String;

    const-string v1, "Start location updates."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    .line 270
    sget v1, Lcom/android/camera/location/FusedLocationController;->LOCATION_REQUEST_INTERVAL_MS:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 271
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 274
    :try_start_0
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lcom/android/camera/location/FusedLocationController;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/location/FusedLocationController;->isLocationUpdateCallbackRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    sget-object v1, Lcom/android/camera/location/FusedLocationController;->TAG:Ljava/lang/String;

    const-string v2, "requestLocationUpdates failed!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private final stopReceivingLocationUpdates()V
    .locals 3

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/android/camera/location/FusedLocationController;->isLocationUpdateCallbackRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/location/FusedLocationController;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    :try_start_0
    sget-object v0, Lcom/android/camera/location/FusedLocationController;->TAG:Ljava/lang/String;

    const-string v1, "FusedLocationApi#removeLocationUpdates"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/android/camera/location/FusedLocationController;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/location/FusedLocationController;->isLocationUpdateCallbackRegistered:Z

    .line 297
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    sget-object v1, Lcom/android/camera/location/FusedLocationController;->TAG:Ljava/lang/String;

    const-string v2, "Failed to remove location listeners. "

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final disconnect()V
    .locals 2

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/android/camera/location/FusedLocationController;->stopReceivingLocationUpdates()V

    .line 307
    sget-object v0, Lcom/android/camera/location/FusedLocationController;->TAG:Ljava/lang/String;

    const-string v1, "apiClient#disconnect"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/android/camera/location/FusedLocationController;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 309
    return-void
.end method

.method public final getCurrentLocation()Landroid/location/Location;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 178
    iget-boolean v1, p0, Lcom/android/camera/location/FusedLocationController;->recordLocation:Z

    if-nez v1, :cond_0

    .line 179
    sget-object v1, Lcom/android/camera/location/FusedLocationController;->TAG:Ljava/lang/String;

    const-string v2, "Fused location does not have the record location permission."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_0
    return-object v0

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/camera/location/FusedLocationController;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    sget-object v1, Lcom/android/camera/location/FusedLocationController;->TAG:Ljava/lang/String;

    const-string v2, "Cannot provide location because the apiClient is not currently connected."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_1
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lcom/android/camera/location/FusedLocationController;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLocationAvailability(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/location/LocationAvailability;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 192
    :cond_2
    sget-object v1, Lcom/android/camera/location/FusedLocationController;->TAG:Ljava/lang/String;

    const-string v2, "Fused location API reports that location is not available."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_3
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lcom/android/camera/location/FusedLocationController;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v1

    .line 198
    if-nez v1, :cond_4

    .line 199
    sget-object v1, Lcom/android/camera/location/FusedLocationController;->TAG:Ljava/lang/String;

    const-string v2, "Fused location API did not provide a location."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_4
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_5

    .line 205
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_5

    .line 206
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_5

    .line 207
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_5

    .line 208
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_6

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_6

    .line 209
    :cond_5
    sget-object v2, Lcom/android/camera/location/FusedLocationController;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x43

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Fused location API provided a location that is probably incorrect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 217
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->nanosToMillis(J)J

    move-result-wide v2

    .line 219
    const/16 v4, 0x708

    invoke-static {v4}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->secondsToMillis(I)I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_7

    .line 220
    sget-object v1, Lcom/android/camera/location/FusedLocationController;->TAG:Ljava/lang/String;

    .line 221
    invoke-static {v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->millisToSecondsFloat(J)F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x5b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Fused location API provided a location from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds ago. Ignoring location."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    .line 225
    goto/16 :goto_0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/android/camera/location/FusedLocationController;->TAG:Ljava/lang/String;

    const-string v1, "onConnected."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-boolean v0, p0, Lcom/android/camera/location/FusedLocationController;->recordLocation:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/android/camera/location/FusedLocationController;->startReceivingLocationUpdates()V

    .line 169
    :cond_0
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    .prologue
    .line 159
    sget-object v0, Lcom/android/camera/location/FusedLocationController;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Connection failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/camera/location/FusedLocationController;->failedListener:Lcom/android/camera/location/LocationController$OnConnectionFailedListener;

    invoke-virtual {v0}, Lcom/android/camera/location/LocationController$OnConnectionFailedListener;->onConnectionFailed()V

    .line 161
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 3

    .prologue
    .line 173
    sget-object v0, Lcom/android/camera/location/FusedLocationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onConnectionSuspended: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public final onLocationChanged$51662RJ4E9NMIP1FDHNM6OBKD5NMSBQCDTHM2T39DTN3MAAM()V
    .locals 2

    .prologue
    .line 154
    sget-object v0, Lcom/android/camera/location/FusedLocationController;->TAG:Ljava/lang/String;

    const-string v1, "Got location."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public final recordLocation(Z)V
    .locals 2

    .prologue
    .line 235
    new-instance v0, Lcom/android/camera/location/FusedLocationController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/location/FusedLocationController$1;-><init>(Lcom/android/camera/location/FusedLocationController;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 259
    invoke-virtual {v0, v1}, Lcom/android/camera/location/FusedLocationController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 260
    return-void
.end method
