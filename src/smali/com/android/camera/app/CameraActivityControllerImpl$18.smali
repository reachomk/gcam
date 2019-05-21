.class final Lcom/android/camera/app/CameraActivityControllerImpl$18;
.super Ljava/lang/Object;
.source "CameraActivityControllerImpl.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSessionManager$SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraActivityControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/app/CameraActivityControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 2460
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSessionCanceled(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 2661
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onSessionCanceled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2662
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v0

    .line 2663
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->removeAt(I)V

    .line 2664
    return-void
.end method

.method public final onSessionCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V
    .locals 4

    .prologue
    .line 2625
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/camera/util/Size;

    .line 2627
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onSessionCaptureIndicatorUpdate bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2624
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0, p1, p2}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$6400(Lcom/android/camera/app/CameraActivityControllerImpl;Landroid/graphics/Bitmap;I)V

    .line 2631
    return-void
.end method

.method public final onSessionDone(Landroid/net/Uri;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 2503
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v7

    .line 2504
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v8

    .line 2505
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5400(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/storage/Storage;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/storage/Storage;->getContentUriForSessionUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 2509
    instance-of v0, v8, Lcom/android/camera/data/BurstItem;

    if-eqz v0, :cond_3

    .line 2510
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2511
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2512
    iget-object v3, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v3}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$6000(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/data/PhotoItemFactory;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/data/PhotoItemFactory;->get(Landroid/net/Uri;)Lcom/android/camera/data/PhotoItem;

    move-result-object v0

    .line 2513
    new-instance v3, Lcom/android/camera/data/BurstFrameItem;

    invoke-direct {v3, v0}, Lcom/android/camera/data/BurstFrameItem;-><init>(Lcom/android/camera/data/PhotoItem;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2516
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2517
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSessionDone called with an empty burst"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2592
    :goto_1
    return-void

    .line 2523
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstFrameItem;

    invoke-virtual {v0}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 2525
    invoke-static {v0, v1}, Lcom/android/camera/data/BurstItemData;->createFromListOfBurstFrames(Landroid/net/Uri;Ljava/util/List;)Lcom/android/camera/data/BurstItemData;

    move-result-object v5

    .line 2526
    new-instance v0, Lcom/android/camera/data/BurstItem;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2528
    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5500(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/processing/ProcessingServiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2529
    invoke-static {v2}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5600(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2530
    invoke-static {v3}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5700(Lcom/android/camera/app/CameraActivityControllerImpl;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2531
    invoke-static {v4}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5800(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/data/GlideFilmstripManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2533
    invoke-static {v6}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5400(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/storage/Storage;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/data/BurstItem;-><init>(Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/session/CaptureSessionManager;Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/data/BurstItemData;Lcom/android/camera/storage/Storage;)V

    .line 2538
    if-eq v7, v9, :cond_2

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2539
    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$800(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripFragment;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/filmstrip/FilmstripFragment;->isFilmstripVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2540
    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripViewController;

    move-result-object v1

    invoke-interface {v1, v8}, Lcom/android/camera/filmstrip/FilmstripViewController;->isVisible(Lcom/android/camera/data/FilmstripItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2541
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5400(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/storage/Storage;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/camera/storage/Storage;->getPlaceholderForSession(Landroid/net/Uri;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/BurstItem;->setPreviousCoverDrawable(Lcom/google/common/base/Optional;)V

    .line 2585
    :cond_2
    :goto_2
    if-ne v7, v9, :cond_7

    .line 2588
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->addOrUpdate(Lcom/android/camera/data/FilmstripItem;)Z

    goto :goto_1

    .line 2544
    :cond_3
    instance-of v0, v8, Lcom/android/camera/data/VideoItem;

    if-eqz v0, :cond_4

    .line 2545
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5900(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/data/VideoItemFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/VideoItemFactory;->get(Landroid/net/Uri;)Lcom/android/camera/data/VideoItem;

    move-result-object v0

    .line 2546
    if-nez v0, :cond_2

    .line 2547
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not find VideoItem for URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2552
    :cond_4
    if-nez v1, :cond_5

    .line 2553
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->refresh(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 2556
    :cond_5
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$6000(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/data/PhotoItemFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/PhotoItemFactory;->get(Landroid/net/Uri;)Lcom/android/camera/data/PhotoItem;

    move-result-object v0

    .line 2561
    if-nez v0, :cond_6

    .line 2562
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x31

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onSessionDone: Could not find LocalData for URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2577
    :cond_6
    if-eq v7, v9, :cond_2

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2578
    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$800(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripFragment;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/filmstrip/FilmstripFragment;->isFilmstripVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2579
    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripViewController;

    move-result-object v1

    invoke-interface {v1, v8}, Lcom/android/camera/filmstrip/FilmstripViewController;->isVisible(Lcom/android/camera/data/FilmstripItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2580
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5400(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/storage/Storage;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/camera/storage/Storage;->getPlaceholderForSession(Landroid/net/Uri;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/PhotoItem;->setPreviousDrawable(Lcom/google/common/base/Optional;)V

    goto/16 :goto_2

    .line 2590
    :cond_7
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v1

    invoke-interface {v1, v7, v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->updateItemAt(ILcom/android/camera/data/FilmstripItem;)V

    goto/16 :goto_1
.end method

.method public final onSessionFailed(Landroid/net/Uri;Lcom/android/camera/ui/UiString;Z)V
    .locals 4

    .prologue
    .line 2635
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onSessionFailed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2637
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v0

    .line 2638
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripViewController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/filmstrip/FilmstripViewController;->getCurrentAdapterIndex()I

    move-result v1

    .line 2640
    if-ne v1, v0, :cond_0

    .line 2641
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$6200(Lcom/android/camera/app/CameraActivityControllerImpl;I)V

    .line 2642
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1, p2}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$6500(Lcom/android/camera/app/CameraActivityControllerImpl;Lcom/android/camera/ui/UiString;)V

    .line 2643
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->refresh(Landroid/net/Uri;)V

    .line 2645
    :cond_0
    if-eqz p3, :cond_2

    .line 2646
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5600(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/camera/session/CaptureSessionManager;->getSession$51662RJ4E9NMIP1FDPIN8BQLE9KJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRJCLPN6QBFDONK6OBGEHQN4PAJCLPN6QBFDOTG____(Landroid/net/Uri;)Lcom/android/camera/session/StackableSession;

    move-result-object v1

    .line 2647
    if-eqz v1, :cond_1

    .line 2648
    invoke-interface {v1}, Lcom/android/camera/session/StackableSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v1

    .line 2649
    if-eqz v1, :cond_1

    .line 2650
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureFailedEvent(I)V

    .line 2655
    :cond_1
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->removeAt(I)V

    .line 2657
    :cond_2
    return-void
.end method

.method public final onSessionFocused(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 2668
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x11

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onSessionFocused:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v0

    .line 2670
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripViewController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/filmstrip/FilmstripViewController;->goToItemAtIndex(I)Z

    .line 2671
    return-void
.end method

.method public final onSessionPictureDataUpdate([BI)V
    .locals 0

    .prologue
    .line 2677
    return-void
.end method

.method public final onSessionProgress(Landroid/net/Uri;I)V
    .locals 2

    .prologue
    .line 2596
    if-gez p2, :cond_1

    .line 2608
    :cond_0
    :goto_0
    return-void

    .line 2600
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripViewController;->getCurrentAdapterIndex()I

    move-result v0

    .line 2601
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2604
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 2605
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2606
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0, p2}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$6200(Lcom/android/camera/app/CameraActivityControllerImpl;I)V

    goto :goto_0
.end method

.method public final onSessionProgressText(Landroid/net/Uri;Lcom/android/camera/ui/UiString;)V
    .locals 2

    .prologue
    .line 2612
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripViewController;->getCurrentAdapterIndex()I

    move-result v0

    .line 2613
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2620
    :cond_0
    :goto_0
    return-void

    .line 2616
    :cond_1
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 2617
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2618
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0, p2}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$6300(Lcom/android/camera/app/CameraActivityControllerImpl;Lcom/android/camera/ui/UiString;)V

    goto :goto_0
.end method

.method public final onSessionQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession$SessionType;)V
    .locals 7

    .prologue
    .line 2463
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x11

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onSessionQueued: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5400(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/storage/Storage;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/storage/Storage;->isSessionUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2492
    :cond_0
    :goto_0
    return-void

    .line 2469
    :cond_1
    sget-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->BURST:Lcom/android/camera/session/CaptureSession$SessionType;

    if-ne p2, v0, :cond_2

    .line 2470
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5400(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/storage/Storage;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/data/BurstItemData;->createFromSessionUri(Landroid/net/Uri;Lcom/android/camera/storage/Storage;)Lcom/android/camera/data/BurstItemData;

    move-result-object v5

    .line 2471
    new-instance v0, Lcom/android/camera/data/BurstItem;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2473
    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5500(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/processing/ProcessingServiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2474
    invoke-static {v2}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5600(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2475
    invoke-static {v3}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5700(Lcom/android/camera/app/CameraActivityControllerImpl;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2476
    invoke-static {v4}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5800(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/data/GlideFilmstripManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2478
    invoke-static {v6}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5400(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/storage/Storage;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/data/BurstItem;-><init>(Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/session/CaptureSessionManager;Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/data/BurstItemData;Lcom/android/camera/storage/Storage;)V

    .line 2489
    :goto_1
    if-eqz v0, :cond_0

    .line 2490
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->addOrUpdate(Lcom/android/camera/data/FilmstripItem;)Z

    goto :goto_0

    .line 2479
    :cond_2
    sget-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->RENDER_VIDEO:Lcom/android/camera/session/CaptureSession$SessionType;

    if-ne p2, v0, :cond_3

    .line 2480
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5900(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/data/VideoItemFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/VideoItemFactory;->createInProgress(Landroid/net/Uri;)Lcom/android/camera/data/VideoItem;

    move-result-object v0

    goto :goto_1

    .line 2481
    :cond_3
    sget-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->HDR_PLUS:Lcom/android/camera/session/CaptureSession$SessionType;

    if-eq p2, v0, :cond_4

    sget-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->HDR_PLUS_AUTO:Lcom/android/camera/session/CaptureSession$SessionType;

    if-ne p2, v0, :cond_5

    .line 2484
    :cond_4
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$6000(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/data/PhotoItemFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/PhotoItemFactory;->createInProgress(Landroid/net/Uri;Z)Lcom/android/camera/data/PhotoItem;

    move-result-object v0

    goto :goto_1

    .line 2486
    :cond_5
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$6000(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/data/PhotoItemFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/PhotoItemFactory;->createInProgress(Landroid/net/Uri;Z)Lcom/android/camera/data/PhotoItem;

    move-result-object v0

    goto :goto_1
.end method

.method public final onSessionThumbnailUpdate(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 2674
    return-void
.end method

.method public final onSessionUpdated(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 2496
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onSessionUpdated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->refresh(Landroid/net/Uri;)V

    .line 2498
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$18;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$6100(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/filmstrip/FilmstripController;->onSessionUpdated(Landroid/net/Uri;)V

    .line 2499
    return-void
.end method
