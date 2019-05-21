.class final Lcom/android/camera/module/capture/CaptureModule$11$1;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureModule$11;->onRemoteThumbnailAvailable([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/capture/CaptureModule$11;

.field private synthetic val$jpegImage:[B


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule$11;[B)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$11$1;->this$1:Lcom/android/camera/module/capture/CaptureModule$11;

    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModule$11$1;->val$jpegImage:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$11$1;->this$1:Lcom/android/camera/module/capture/CaptureModule$11;

    iget-object v0, v0, Lcom/android/camera/module/capture/CaptureModule$11;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$1400(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModule$11$1;->val$jpegImage:[B

    invoke-interface {v0, v1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 682
    return-void
.end method
