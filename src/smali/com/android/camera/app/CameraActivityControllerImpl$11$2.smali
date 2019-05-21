.class final Lcom/android/camera/app/CameraActivityControllerImpl$11$2;
.super Ljava/lang/Object;
.source "CameraActivityControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/CameraActivityControllerImpl$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/app/CameraActivityControllerImpl$11;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraActivityControllerImpl$11;)V
    .locals 0

    .prologue
    .line 2080
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11$2;->this$1:Lcom/android/camera/app/CameraActivityControllerImpl$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11$2;->this$1:Lcom/android/camera/app/CameraActivityControllerImpl$11;

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl$11;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;

    move-result-object v0

    sget v1, Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap$ThumbnailType;->PLACEHOLDER$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAQBLEHKMOSPFAHSN0PB4AHK7ARB2DPGMIR22D5Q6QOBG4HA6GTBDC9N62QBCAHSN0P9R:I

    invoke-interface {v0, v1}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;->showDefaultCaptureIndicator$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUTB9ELQ6IR3J5TA7IS35CHA6GTBDC9N62QBC89KN8RB1E0I58Q3LDLH6SOB9DHA7IS357CKLC___(I)V

    .line 2085
    return-void
.end method
