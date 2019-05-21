.class final Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;
.super Ljava/lang/Object;
.source "SnapshotTakerImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->sendSnapshotRequest$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NK6OBDCLP62GR1E1Q7ASJ5ADIN6SR9DTN50SJFF1SJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3C5MM6RRICHIN4BQ3C5MM6RRICHIN4KREC5O76Q3FEH37AT3LE9IN6EO_(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)Lcom/android/camera/one/v2/command/CommandExecutorModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
        "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
        "Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

.field private synthetic val$isTorchOn:Ljava/lang/Boolean;

.field private synthetic val$snapshotRequestStartTimestamp:J

.field private synthetic val$zoomRatio:Ljava/lang/Float;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;JLjava/lang/Boolean;Ljava/lang/Float;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;->this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

    iput-wide p2, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;->val$snapshotRequestStartTimestamp:J

    iput-object p4, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;->val$isTorchOn:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;->val$zoomRatio:Ljava/lang/Float;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 276
    invoke-interface/range {p2 .. p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v2

    .line 277
    sget-object v0, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 278
    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 279
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 286
    sget-object v0, Landroid/hardware/camera2/TotalCaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 287
    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 288
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-interface/range {p2 .. p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    new-array v1, v1, [B

    .line 294
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 295
    invoke-interface/range {p2 .. p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 298
    new-instance v2, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v2}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 300
    :try_start_0
    invoke-virtual {v2, v1}, Lcom/android/camera/exif/ExifInterface;->readExif([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;->this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->access$500(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Lcom/android/camera/storage/FileNamer;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/android/camera/storage/FileNamer;->generateImageName(J)Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v3, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;->this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

    invoke-static {v3}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->access$500(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Lcom/android/camera/storage/FileNamer;

    move-result-object v3

    sget-object v4, Lcom/android/camera/storage/MimeType;->JPEG:Lcom/android/camera/storage/MimeType;

    invoke-virtual {v3, v0, v4}, Lcom/android/camera/storage/FileNamer;->generateFilePath(Ljava/lang/String;Lcom/android/camera/storage/MimeType;)Ljava/io/File;

    move-result-object v3

    .line 310
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    new-instance v0, Ljava/io/IOException;

    const-string v1, "snapshot file already exists."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 371
    :goto_1
    return-object v0

    .line 280
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    invoke-static {}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fail to read EXIF from JPEG byte array."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    throw v0

    .line 315
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 317
    iget-object v1, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;->this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

    invoke-static {v1}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->access$600(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Lcom/android/camera/storage/CameraFileUtil;

    move-result-object v1

    .line 318
    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    .line 317
    invoke-interface {v1, v3, v0, v4}, Lcom/android/camera/storage/CameraFileUtil;->writeImageFile(Ljava/io/File;Ljava/io/InputStream;Lcom/google/common/base/Optional;)J

    .line 320
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    .line 321
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;->this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->access$700(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;->this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->access$700(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/location/LocationProvider;

    invoke-interface {v0}, Lcom/android/camera/location/LocationProvider;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    .line 330
    :cond_2
    invoke-static {v2}, Lcom/android/camera/exif/ExifOrientation;->parseFromExif(Lcom/android/camera/exif/ExifInterface;)Lcom/android/camera/exif/ExifOrientation;

    move-result-object v0

    .line 331
    invoke-static {v0}, Lcom/android/camera/exif/ExifOrientation;->getRotation(Lcom/android/camera/exif/ExifOrientation;)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v9

    .line 335
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    .line 336
    invoke-virtual {v2, v0}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 337
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    .line 338
    invoke-virtual {v2, v1}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 339
    new-instance v6, Lcom/android/camera/util/Size;

    invoke-direct {v6, v0, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v12, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;->val$snapshotRequestStartTimestamp:J

    sub-long v12, v0, v12

    .line 346
    new-instance v1, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;

    sget-object v5, Lcom/android/camera/storage/MimeType;->JPEG:Lcom/android/camera/storage/MimeType;

    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;->val$isTorchOn:Ljava/lang/Boolean;

    .line 353
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;->val$zoomRatio:Ljava/lang/Float;

    .line 354
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-direct/range {v1 .. v13}, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;-><init>(Lcom/android/camera/exif/ExifInterface;Ljava/io/File;Lcom/google/common/base/Optional;Lcom/android/camera/storage/MimeType;Lcom/android/camera/util/Size;ZFIJJ)V

    .line 359
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;->this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->access$800(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 361
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;->this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->access$900$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5THM2RB5E9GIUKREC5O76Q3FEHA62QR5E94MQS3C7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NM6OBDCLP62BQJDPGN0SR8DTQ58OBBCLP4IRBGDGI56T31EHIJM___(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)I

    move-result v0

    sget v3, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$State;->BUSY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 362
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;->this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

    sget v3, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$State;->READY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    invoke-static {v0, v3}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->access$902$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5THM2RB5E9GIUKREC5O76Q3FEHA62QR5E94MQS3C7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5THM2RB5E9GIUKREC5O76Q3FEHA62QR5E94MQS3C4H9N8OBKCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOR1DLHMUSJ4CLP2UOR1DLIN4O9FADN62S3JD1NN8L31DDIN4IBDE1M28KRKC5Q6AEO_(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;I)I

    .line 366
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;->this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->access$1000(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;->this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

    invoke-virtual {v0}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->close()V

    .line 369
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto/16 :goto_1

    .line 361
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 369
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 269
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    check-cast p2, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;->apply(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
