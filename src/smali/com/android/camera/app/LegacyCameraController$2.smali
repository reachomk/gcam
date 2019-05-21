.class final Lcom/android/camera/app/LegacyCameraController$2;
.super Ljava/lang/Object;
.source "LegacyCameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/LegacyCameraController;->checkAndOpenCamera(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$cameraId:I

.field private synthetic val$cb:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;I)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/camera/app/LegacyCameraController$2;->val$cb:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    iput p2, p0, Lcom/android/camera/app/LegacyCameraController$2;->val$cameraId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraController$2;->val$cb:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    iget v1, p0, Lcom/android/camera/app/LegacyCameraController$2;->val$cameraId:I

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraDisabled(I)V

    .line 353
    return-void
.end method
