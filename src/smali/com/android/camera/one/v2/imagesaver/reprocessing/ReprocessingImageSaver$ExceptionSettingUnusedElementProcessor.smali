.class final Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ExceptionSettingUnusedElementProcessor;
.super Ljava/lang/Object;
.source "ReprocessingImageSaver.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExceptionSettingUnusedElementProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor",
        "<",
        "Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;",
        ">;"
    }
.end annotation


# static fields
.field static INSTANCE:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ExceptionSettingUnusedElementProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 358
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ExceptionSettingUnusedElementProcessor;

    invoke-direct {v0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ExceptionSettingUnusedElementProcessor;-><init>()V

    sput-object v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ExceptionSettingUnusedElementProcessor;->INSTANCE:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ExceptionSettingUnusedElementProcessor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 355
    check-cast p1, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;

    .line 1363
    invoke-static {p1}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;->access$1300(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    const-string v2, "Reprocessing saver was closed"

    invoke-direct {v1, v2}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 355
    return-void
.end method
