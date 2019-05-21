.class final Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter$LoggingImageListener;
.super Ljava/lang/Object;
.source "LoggingImageWriter.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoggingImageListener"
.end annotation


# instance fields
.field private final delegate:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;

.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter;Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter$LoggingImageListener;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter$LoggingImageListener;->delegate:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter;Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;B)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter$LoggingImageListener;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter;Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;)V

    return-void
.end method


# virtual methods
.method public final onInputImageReleased()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter$LoggingImageListener;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter;->access$000(Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "onInputImageReleased"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter$LoggingImageListener;->delegate:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;->onInputImageReleased()V

    .line 37
    return-void
.end method
