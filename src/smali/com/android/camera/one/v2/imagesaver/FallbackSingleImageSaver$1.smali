.class final Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$1;
.super Ljava/lang/Object;
.source "FallbackSingleImageSaver.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;-><init>(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$1;->this$0:Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private get()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$1;->this$0:Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->access$000(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$1;->this$0:Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->access$100(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$1;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
