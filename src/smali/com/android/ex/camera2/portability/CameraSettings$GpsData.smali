.class public final Lcom/android/ex/camera2/portability/CameraSettings$GpsData;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GpsData"
.end annotation


# instance fields
.field public final altitude:D

.field public final latitude:D

.field public final longitude:D

.field public final processingMethod:Ljava/lang/String;

.field public final timeStamp:J


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/CameraSettings$GpsData;)V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->latitude:D

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->latitude:D

    .line 100
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->longitude:D

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->longitude:D

    .line 101
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->altitude:D

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->altitude:D

    .line 102
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->timeStamp:J

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->timeStamp:J

    .line 103
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    .line 104
    return-void
.end method
