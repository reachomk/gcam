.class final Lcom/android/camera/processing/imagebackend/ImageBackend$2;
.super Ljava/lang/Object;
.source "ImageBackend.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/imagebackend/ImageBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/processing/imagebackend/ImageBackend;

.field private synthetic val$img:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;


# direct methods
.method constructor <init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .locals 0

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$2;->this$0:Lcom/android/camera/processing/imagebackend/ImageBackend;

    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$2;->val$img:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$2;->val$img:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 1013
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$2;->this$0:Lcom/android/camera/processing/imagebackend/ImageBackend;

    invoke-static {v0}, Lcom/android/camera/processing/imagebackend/ImageBackend;->access$008(Lcom/android/camera/processing/imagebackend/ImageBackend;)I

    .line 1014
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$2;->this$0:Lcom/android/camera/processing/imagebackend/ImageBackend;

    .line 1017
    invoke-static {v0}, Lcom/android/camera/processing/imagebackend/ImageBackend;->access$100(Lcom/android/camera/processing/imagebackend/ImageBackend;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$2;->this$0:Lcom/android/camera/processing/imagebackend/ImageBackend;

    .line 1019
    invoke-static {v1}, Lcom/android/camera/processing/imagebackend/ImageBackend;->access$000(Lcom/android/camera/processing/imagebackend/ImageBackend;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x58

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Release of image occurred.  Good fun. Total Images Open/Closed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1014
    invoke-static {v0}, Lcom/android/camera/processing/imagebackend/ImageBackend;->logWrapper(Ljava/lang/String;)V

    .line 1020
    return-void
.end method
