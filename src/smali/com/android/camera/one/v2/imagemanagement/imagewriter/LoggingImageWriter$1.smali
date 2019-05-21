.class Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter$1;
.super Ljava/lang/Object;
.source "LoggingImageWriter.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;)V
    .locals 0

    .prologue
    .line 1199
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter$1;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/apps/camera/async/CloseableList;)Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/CloseableList",
            "<",
            "Lcom/android/camera/audio/SingleUseSoundPlayer;",
            ">;)",
            "Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;"
        }
    .end annotation

    .prologue
    .line 1203
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter$1;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2199
    check-cast p1, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter$1;->apply(Lcom/google/android/apps/camera/async/CloseableList;)Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;

    move-result-object v0

    return-object v0
.end method
