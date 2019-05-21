.class final Lcom/google/android/apps/lightcycle/PanoramaModule$19;
.super Ljava/lang/Thread;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;->finishCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$19;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$19;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    .line 1383
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$4400$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKTIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUR39CTK78ORPCDM6ABQGC5N6USJ1DLGKQRR4ELM6A923C5O78TBICL6MUP357C______(Lcom/google/android/apps/lightcycle/PanoramaModule;)I

    move-result v0

    sget v1, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->PHOTO_SPHERE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-ne v0, v1, :cond_0

    .line 1384
    const v0, 0x7f020113

    .line 1389
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$19;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    .line 1391
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1400$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOBGE0NK6OBDCLP62GB3EHKNCQBKF51MURJKE9NMOR35E8TG____(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    .line 1392
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 1393
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1394
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1395
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1398
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1400
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1401
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1403
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$19;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    .line 1404
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$3400(Lcom/google/android/apps/lightcycle/PanoramaModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a0269

    .line 1405
    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$19;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$200(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    .line 1407
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/android/camera/ui/PreviewContentNoOp;->from(I[Ljava/lang/Object;)Lcom/android/camera/ui/UiString;

    move-result-object v0

    sget-object v4, Lcom/android/camera/session/CaptureSession$SessionType;->PHOTOSPHERE:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 1406
    invoke-interface {v2, v3, v0, v4}, Lcom/android/camera/session/StackableSession;->startSession([BLcom/android/camera/ui/UiString;Lcom/android/camera/session/CaptureSession$SessionType;)V

    .line 1409
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$19;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2800(Lcom/google/android/apps/lightcycle/PanoramaModule;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1411
    invoke-interface {v2}, Lcom/android/camera/session/StackableSession;->getTempOutputFile()Lcom/android/camera/session/TemporarySessionFile;

    move-result-object v0

    .line 1412
    invoke-virtual {v0}, Lcom/android/camera/session/TemporarySessionFile;->isUsable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1413
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Temporary session file not usable."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1431
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not write temporary panorama image."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    :goto_2
    return-void

    .line 1385
    :cond_0
    const v0, 0x7f020109

    goto :goto_0

    .line 1404
    :cond_1
    const v0, 0x7f0a0268

    goto :goto_1

    .line 1417
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lcom/android/camera/session/TemporarySessionFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1418
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1421
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$19;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$200(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->updatePreview()V

    .line 1423
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$19;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    .line 1424
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$3400(Lcom/google/android/apps/lightcycle/PanoramaModule;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1425
    const/16 v0, 0xb

    .line 1427
    :goto_3
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$19;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    .line 1429
    invoke-static {v2}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2300(Lcom/google/android/apps/lightcycle/PanoramaModule;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$19;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2200(Lcom/google/android/apps/lightcycle/PanoramaModule;)I

    move-result v3

    const v6, 0x3a83126f    # 0.001f

    long-to-float v4, v4

    mul-float/2addr v4, v6

    .line 1428
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/camera/stats/UsageStatistics;->photosphereCaptureComputeEvent(IIIF)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1426
    :cond_3
    const/4 v0, 0x5

    goto :goto_3
.end method
