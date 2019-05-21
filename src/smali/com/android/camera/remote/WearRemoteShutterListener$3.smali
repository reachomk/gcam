.class final Lcom/android/camera/remote/WearRemoteShutterListener$3;
.super Ljava/lang/Object;
.source "WearRemoteShutterListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/remote/WearRemoteShutterListener;->onPictureTaken([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/remote/WearRemoteShutterListener;

.field private synthetic val$photoData:[B

.field private synthetic val$target:Lcom/bumptech/glide/request/target/SimpleTarget;


# direct methods
.method constructor <init>(Lcom/android/camera/remote/WearRemoteShutterListener;[BLcom/bumptech/glide/request/target/SimpleTarget;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/camera/remote/WearRemoteShutterListener$3;->this$0:Lcom/android/camera/remote/WearRemoteShutterListener;

    iput-object p2, p0, Lcom/android/camera/remote/WearRemoteShutterListener$3;->val$photoData:[B

    iput-object p3, p0, Lcom/android/camera/remote/WearRemoteShutterListener$3;->val$target:Lcom/bumptech/glide/request/target/SimpleTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener$3;->this$0:Lcom/android/camera/remote/WearRemoteShutterListener;

    invoke-static {v0}, Lcom/android/camera/remote/WearRemoteShutterListener;->access$300(Lcom/android/camera/remote/WearRemoteShutterListener;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const-class v1, [B

    .line 169
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/remote/WearRemoteShutterListener$3;->this$0:Lcom/android/camera/remote/WearRemoteShutterListener;

    .line 171
    invoke-static {v0}, Lcom/android/camera/remote/WearRemoteShutterListener;->access$300(Lcom/android/camera/remote/WearRemoteShutterListener;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->fitCenterTransform(Landroid/content/Context;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1460
    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->COMPRESSION_FORMAT:Lcom/bumptech/glide/load/Option;

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v3, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    .line 172
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 1468
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->COMPRESSION_QUALITY:Lcom/bumptech/glide/load/Option;

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    .line 170
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/remote/WearRemoteShutterListener$3;->val$photoData:[B

    .line 174
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/remote/WearRemoteShutterListener$3;->val$target:Lcom/bumptech/glide/request/target/SimpleTarget;

    .line 175
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 176
    return-void
.end method
