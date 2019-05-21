.class final Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl$1;
.super Ljava/lang/Object;
.source "ResourceCaptureToolsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->takePictureNow(Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl$1;->this$0:Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;->access$000(Lcom/android/camera/module/imageintent/resource/ResourceCaptureToolsImpl;)Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->setShutterButtonEnabled(Z)V

    .line 162
    return-void
.end method
