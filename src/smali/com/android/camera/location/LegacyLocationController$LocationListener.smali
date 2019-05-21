.class final Lcom/android/camera/location/LegacyLocationController$LocationListener;
.super Ljava/lang/Object;
.source "LegacyLocationController.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/location/LegacyLocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocationListener"
.end annotation


# instance fields
.field lastLocation:Landroid/location/Location;

.field private provider:Ljava/lang/String;

.field valid:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/location/LegacyLocationController$LocationListener;->valid:Z

    .line 120
    iput-object p1, p0, Lcom/android/camera/location/LegacyLocationController$LocationListener;->provider:Ljava/lang/String;

    .line 121
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/android/camera/location/LegacyLocationController$LocationListener;->provider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/location/LegacyLocationController$LocationListener;->lastLocation:Landroid/location/Location;

    .line 122
    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 126
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/location/LegacyLocationController$LocationListener;->valid:Z

    if-nez v0, :cond_1

    .line 131
    invoke-static {}, Lcom/android/camera/location/LegacyLocationController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Got first location."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/camera/location/LegacyLocationController$LocationListener;->lastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/location/LegacyLocationController$LocationListener;->valid:Z

    goto :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/location/LegacyLocationController$LocationListener;->valid:Z

    .line 143
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 147
    packed-switch p2, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 151
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/location/LegacyLocationController$LocationListener;->valid:Z

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
