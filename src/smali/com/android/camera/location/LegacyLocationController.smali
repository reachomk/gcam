.class final Lcom/android/camera/location/LegacyLocationController;
.super Ljava/lang/Object;
.source "LegacyLocationController.java"

# interfaces
.implements Lcom/android/camera/location/LocationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/location/LegacyLocationController$LocationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private locationListeners:[Lcom/android/camera/location/LegacyLocationController$LocationListener;

.field private locationManager:Landroid/location/LocationManager;

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

.field private recordLocation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "LcyLocProvider"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/location/LegacyLocationController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljavax/inject/Provider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/location/LocationManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/location/LegacyLocationController$LocationListener;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/camera/location/LegacyLocationController$LocationListener;

    const-string v3, "gps"

    invoke-direct {v2, v3}, Lcom/android/camera/location/LegacyLocationController$LocationListener;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/camera/location/LegacyLocationController$LocationListener;

    const-string v3, "network"

    invoke-direct {v2, v3}, Lcom/android/camera/location/LegacyLocationController$LocationListener;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/location/LegacyLocationController;->locationListeners:[Lcom/android/camera/location/LegacyLocationController$LocationListener;

    .line 29
    iput-object p1, p0, Lcom/android/camera/location/LegacyLocationController;->locationManagerProvider:Ljavax/inject/Provider;

    .line 30
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/camera/location/LegacyLocationController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final stopReceivingLocationUpdates()V
    .locals 4

    .prologue
    .line 101
    sget-object v0, Lcom/android/camera/location/LegacyLocationController;->TAG:Ljava/lang/String;

    const-string v1, "stopping location updates"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/android/camera/location/LegacyLocationController;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 103
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/location/LegacyLocationController;->locationListeners:[Lcom/android/camera/location/LegacyLocationController$LocationListener;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/location/LegacyLocationController;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/camera/location/LegacyLocationController;->locationListeners:[Lcom/android/camera/location/LegacyLocationController$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    .line 107
    sget-object v2, Lcom/android/camera/location/LegacyLocationController;->TAG:Ljava/lang/String;

    const-string v3, "fail to remove location listners, ignore"

    invoke-static {v2, v3, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 110
    :cond_0
    sget-object v0, Lcom/android/camera/location/LegacyLocationController;->TAG:Ljava/lang/String;

    const-string v1, "stopReceivingLocationUpdates"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1
    return-void
.end method


# virtual methods
.method public final disconnect()V
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcom/android/camera/location/LegacyLocationController;->TAG:Ljava/lang/String;

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public final getCurrentLocation()Landroid/location/Location;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-boolean v0, p0, Lcom/android/camera/location/LegacyLocationController;->recordLocation:Z

    if-nez v0, :cond_0

    move-object v0, v1

    .line 46
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/camera/location/LegacyLocationController;->locationListeners:[Lcom/android/camera/location/LegacyLocationController$LocationListener;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 40
    iget-object v2, p0, Lcom/android/camera/location/LegacyLocationController;->locationListeners:[Lcom/android/camera/location/LegacyLocationController$LocationListener;

    aget-object v2, v2, v0

    .line 1158
    iget-boolean v3, v2, Lcom/android/camera/location/LegacyLocationController$LocationListener;->valid:Z

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/android/camera/location/LegacyLocationController$LocationListener;->lastLocation:Landroid/location/Location;

    .line 41
    :goto_2
    if-eqz v2, :cond_2

    move-object v0, v2

    .line 42
    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 1158
    goto :goto_2

    .line 39
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 45
    :cond_3
    sget-object v0, Lcom/android/camera/location/LegacyLocationController;->TAG:Ljava/lang/String;

    const-string v2, "No location received yet."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 46
    goto :goto_0
.end method

.method public final recordLocation(Z)V
    .locals 7

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/camera/location/LegacyLocationController;->recordLocation:Z

    if-eq v0, p1, :cond_1

    .line 52
    iput-boolean p1, p0, Lcom/android/camera/location/LegacyLocationController;->recordLocation:Z

    .line 53
    if-eqz p1, :cond_4

    .line 2069
    sget-object v0, Lcom/android/camera/location/LegacyLocationController;->TAG:Ljava/lang/String;

    const-string v1, "starting location updates"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    iget-object v0, p0, Lcom/android/camera/location/LegacyLocationController;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 2071
    iget-object v0, p0, Lcom/android/camera/location/LegacyLocationController;->locationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/camera/location/LegacyLocationController;->locationManager:Landroid/location/LocationManager;

    .line 2073
    :cond_0
    iget-object v0, p0, Lcom/android/camera/location/LegacyLocationController;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 2075
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/location/LegacyLocationController;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/location/LegacyLocationController;->locationListeners:[Lcom/android/camera/location/LegacyLocationController$LocationListener;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2086
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/location/LegacyLocationController;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/location/LegacyLocationController;->locationListeners:[Lcom/android/camera/location/LegacyLocationController$LocationListener;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2096
    :goto_1
    sget-object v0, Lcom/android/camera/location/LegacyLocationController;->TAG:Ljava/lang/String;

    const-string v1, "startReceivingLocationUpdates"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    :goto_2
    return-void

    .line 2080
    :catch_0
    move-exception v0

    .line 2081
    sget-object v1, Lcom/android/camera/location/LegacyLocationController;->TAG:Ljava/lang/String;

    const-string v2, "fail to request location update, ignore"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2082
    :catch_1
    move-exception v0

    .line 2083
    sget-object v1, Lcom/android/camera/location/LegacyLocationController;->TAG:Ljava/lang/String;

    const-string v2, "provider does not exist "

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 2091
    :catch_2
    move-exception v0

    .line 2092
    sget-object v1, Lcom/android/camera/location/LegacyLocationController;->TAG:Ljava/lang/String;

    const-string v2, "fail to request location update, ignore"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2093
    :catch_3
    move-exception v0

    .line 2094
    sget-object v1, Lcom/android/camera/location/LegacyLocationController;->TAG:Ljava/lang/String;

    const-string v2, "provider does not exist "

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 56
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/location/LegacyLocationController;->stopReceivingLocationUpdates()V

    goto :goto_2
.end method
