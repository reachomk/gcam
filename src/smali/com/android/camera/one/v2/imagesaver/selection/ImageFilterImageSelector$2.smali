.class final Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector$2;
.super Ljava/lang/Object;
.source "ImageFilterImageSelector.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector;->selectBestImage(Ljava/util/List;Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/Lifetime;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector$2;->val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector$2;->val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 118
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 109
    .line 1112
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector$2;->val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 109
    return-void
.end method
