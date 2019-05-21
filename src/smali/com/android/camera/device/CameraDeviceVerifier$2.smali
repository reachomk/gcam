.class final Lcom/android/camera/device/CameraDeviceVerifier$2;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "CameraDeviceVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/device/CameraDeviceVerifier;->pollUntilAvailable()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$cameraAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/camera/device/CameraDeviceVerifier$2;->val$cameraAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraAvailable(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceVerifier$2;->val$cameraAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 148
    return-void
.end method
