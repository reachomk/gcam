.class final Lcom/android/camera/burst/BurstControllerImpl$7;
.super Lcom/google/android/libraries/smartburst/utils/VoidFunction;
.source "BurstControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/BurstControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/smartburst/utils/VoidFunction",
        "<",
        "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/BurstControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstControllerImpl;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/android/camera/burst/BurstControllerImpl$7;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/utils/VoidFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 690
    check-cast p1, Lcom/google/android/libraries/smartburst/media/BitmapLoader;

    .line 1693
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$7;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$700(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/libraries/smartburst/media/BitmapLoader;->load(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v2

    const/4 v1, 0x0

    .line 1694
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$7;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ46RREEHP6UR3CCLP4IRBGDGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSR5EDPMIRRE5T1M2S3KELP6AKR5EDPMIRRE7C______(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/session/StackableSession;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->detach()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v3, v0}, Lcom/android/camera/session/StackableSession;->updateThumbnail(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1695
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->close()V

    :cond_0
    return-void

    .line 1693
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1695
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :try_start_2
    invoke-interface {v2}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    throw v0

    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0
.end method
