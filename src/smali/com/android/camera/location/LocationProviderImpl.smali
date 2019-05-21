.class final Lcom/android/camera/location/LocationProviderImpl;
.super Ljava/lang/Object;
.source "LocationProviderImpl.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;
.implements Lcom/android/camera/location/LocationProvider;
.implements Lcom/android/camera/util/lifecycle/AppLifecycleInterfaces$OnAppPause;
.implements Lcom/android/camera/util/lifecycle/AppLifecycleInterfaces$OnAppResume;
.implements Lcom/android/camera/util/lifecycle/AppLifecycleInterfaces$OnAppStop;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activityContext:Landroid/content/Context;

.field private isLocationRecordingEnabled:Z

.field private locationController:Lcom/android/camera/location/LocationController;

.field private final locationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/location/LocationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsManager:Lcom/android/camera/settings/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "LocationManager"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/location/LocationProviderImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/settings/SettingsManager;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/camera/settings/SettingsManager;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/location/LocationManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/location/LocationProviderImpl;->isLocationRecordingEnabled:Z

    .line 43
    iput-object p1, p0, Lcom/android/camera/location/LocationProviderImpl;->activityContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/android/camera/location/LocationProviderImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 45
    iput-object p3, p0, Lcom/android/camera/location/LocationProviderImpl;->locationManagerProvider:Ljavax/inject/Provider;

    .line 46
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/camera/location/LocationProviderImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/location/LocationProviderImpl;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/camera/location/LocationProviderImpl;->useLegacyLocationProvider()V

    return-void
.end method

.method private final useLegacyLocationProvider()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/location/LocationProviderImpl;->locationController:Lcom/android/camera/location/LocationController;

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/android/camera/location/LocationProviderImpl;->TAG:Ljava/lang/String;

    const-string v1, "Disconnecting location controller."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/camera/location/LocationProviderImpl;->locationController:Lcom/android/camera/location/LocationController;

    invoke-interface {v0}, Lcom/android/camera/location/LocationController;->disconnect()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/location/LocationProviderImpl;->locationController:Lcom/android/camera/location/LocationController;

    .line 129
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/location/LocationProviderImpl;->isLocationRecordingEnabled:Z

    if-eqz v0, :cond_1

    .line 130
    sget-object v0, Lcom/android/camera/location/LocationProviderImpl;->TAG:Ljava/lang/String;

    const-string v1, "Using legacy location provider."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/android/camera/location/LegacyLocationController;

    iget-object v1, p0, Lcom/android/camera/location/LocationProviderImpl;->locationManagerProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1}, Lcom/android/camera/location/LegacyLocationController;-><init>(Ljavax/inject/Provider;)V

    iput-object v0, p0, Lcom/android/camera/location/LocationProviderImpl;->locationController:Lcom/android/camera/location/LocationController;

    .line 133
    :cond_1
    return-void
.end method


# virtual methods
.method public final getCurrentLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/location/LocationProviderImpl;->locationController:Lcom/android/camera/location/LocationController;

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/location/LocationProviderImpl;->locationController:Lcom/android/camera/location/LocationController;

    invoke-interface {v0}, Lcom/android/camera/location/LocationController;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    goto :goto_0
.end method

.method public final onAppPause()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/location/LocationProviderImpl;->locationController:Lcom/android/camera/location/LocationController;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/camera/location/LocationProviderImpl;->locationController:Lcom/android/camera/location/LocationController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/location/LocationController;->recordLocation(Z)V

    .line 76
    :cond_0
    return-void
.end method

.method public final onAppResume()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/android/camera/location/LocationProviderImpl;->activityContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 86
    iget-object v1, p0, Lcom/android/camera/location/LocationProviderImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v2, "default_scope"

    const-string v3, "pref_camera_recordlocation_key"

    .line 87
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/location/LocationProviderImpl;->isLocationRecordingEnabled:Z

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/android/camera/location/LocationProviderImpl;->locationController:Lcom/android/camera/location/LocationController;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/location/LocationProviderImpl;->isLocationRecordingEnabled:Z

    if-eqz v1, :cond_1

    .line 1105
    iget-object v1, p0, Lcom/android/camera/location/LocationProviderImpl;->activityContext:Landroid/content/Context;

    .line 1142
    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 1143
    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1105
    :cond_0
    if-eqz v0, :cond_4

    .line 1106
    sget-object v0, Lcom/android/camera/location/LocationProviderImpl;->TAG:Ljava/lang/String;

    const-string v1, "Using fused location provider."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    new-instance v0, Lcom/android/camera/location/FusedLocationController;

    iget-object v1, p0, Lcom/android/camera/location/LocationProviderImpl;->activityContext:Landroid/content/Context;

    new-instance v2, Lcom/android/camera/location/LocationController$OnConnectionFailedListener;

    invoke-direct {v2, p0}, Lcom/android/camera/location/LocationController$OnConnectionFailedListener;-><init>(Lcom/android/camera/location/LocationProviderImpl;)V

    invoke-direct {v0, v1, v2}, Lcom/android/camera/location/FusedLocationController;-><init>(Landroid/content/Context;Lcom/android/camera/location/LocationController$OnConnectionFailedListener;)V

    iput-object v0, p0, Lcom/android/camera/location/LocationProviderImpl;->locationController:Lcom/android/camera/location/LocationController;

    .line 99
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/location/LocationProviderImpl;->locationController:Lcom/android/camera/location/LocationController;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/android/camera/location/LocationProviderImpl;->locationController:Lcom/android/camera/location/LocationController;

    iget-boolean v1, p0, Lcom/android/camera/location/LocationProviderImpl;->isLocationRecordingEnabled:Z

    invoke-interface {v0, v1}, Lcom/android/camera/location/LocationController;->recordLocation(Z)V

    .line 102
    :cond_2
    return-void

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/android/camera/location/LocationProviderImpl;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v2, "default_scope"

    const-string v3, "pref_camera_recordlocation_key"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 92
    iput-boolean v0, p0, Lcom/android/camera/location/LocationProviderImpl;->isLocationRecordingEnabled:Z

    goto :goto_0

    .line 1118
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/location/LocationProviderImpl;->useLegacyLocationProvider()V

    goto :goto_1
.end method

.method public final onAppStop()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/location/LocationProviderImpl;->locationController:Lcom/android/camera/location/LocationController;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/android/camera/location/LocationProviderImpl;->TAG:Ljava/lang/String;

    const-string v1, "Disconnecting location controller."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/location/LocationProviderImpl;->locationController:Lcom/android/camera/location/LocationController;

    invoke-interface {v0}, Lcom/android/camera/location/LocationController;->disconnect()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/location/LocationProviderImpl;->locationController:Lcom/android/camera/location/LocationController;

    .line 67
    :cond_0
    return-void
.end method
