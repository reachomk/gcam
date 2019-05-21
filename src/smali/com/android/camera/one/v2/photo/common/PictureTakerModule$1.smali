.class final Lcom/android/camera/one/v2/photo/common/PictureTakerModule$1;
.super Ljava/lang/Object;
.source "PictureTakerModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/photo/common/PictureTakerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field final synthetic val$log:Lcom/android/camera/debug/Logger;

.field private synthetic val$rootCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/debug/Logger;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerModule$1;->val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    iput-object p2, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerModule$1;->val$rootCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    iput-object p3, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerModule$1;->val$log:Lcom/android/camera/debug/Logger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerModule$1;->val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerModule$1;->val$rootCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 50
    invoke-interface {v1}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->getAvailability()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v1

    new-instance v2, Lcom/android/camera/one/v2/photo/common/PictureTakerModule$1$1;

    invoke-direct {v2, p0}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule$1$1;-><init>(Lcom/android/camera/one/v2/photo/common/PictureTakerModule$1;)V

    .line 49
    invoke-static {v1, v2}, Lcom/google/android/apps/camera/async/Observables;->addThreadSafeCallback(Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Updatable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 57
    return-void
.end method
