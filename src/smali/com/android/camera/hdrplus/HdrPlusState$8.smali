.class final Lcom/android/camera/hdrplus/HdrPlusState$8;
.super Lcom/google/googlex/gcam/EncodedBlobCallback;
.source "HdrPlusState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hdrplus/HdrPlusState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/hdrplus/HdrPlusState;


# direct methods
.method constructor <init>(Lcom/android/camera/hdrplus/HdrPlusState;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/camera/hdrplus/HdrPlusState$8;->this$0:Lcom/android/camera/hdrplus/HdrPlusState;

    invoke-direct {p0}, Lcom/google/googlex/gcam/EncodedBlobCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final Run(ILcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;JII)V
    .locals 19

    .prologue
    .line 269
    invoke-static {}, Lcom/android/camera/hdrplus/HdrPlusState;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x5f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Gcam "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " JPEG data ready: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes, burstId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/hdrplus/HdrPlusState$8;->this$0:Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v3, v2, Lcom/android/camera/hdrplus/HdrPlusState;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 280
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/hdrplus/HdrPlusState$8;->this$0:Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v2, v2, Lcom/android/camera/hdrplus/HdrPlusState;->inFlightShots:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/camera/hdrplus/InFlightShotParameters;

    move-object v14, v0

    .line 281
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    if-nez v14, :cond_0

    .line 284
    invoke-static/range {p2 .. p2}, Lcom/google/googlex/gcam/GcamModule;->DeleteNativeArray(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;)V

    .line 353
    :goto_0
    return-void

    .line 281
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 288
    :cond_0
    move-wide/from16 v0, p3

    long-to-int v2, v0

    .line 290
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/google/googlex/gcam/GcamModule;->ByteBufferViewOfNativePointer(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 293
    move-wide/from16 v0, p3

    long-to-int v3, v0

    new-array v0, v3, [B

    move-object/from16 v16, v0

    .line 294
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 295
    invoke-static/range {p2 .. p2}, Lcom/google/googlex/gcam/GcamModule;->DeleteNativeArray(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;)V

    .line 297
    const/4 v3, 0x0

    .line 300
    invoke-virtual {v14}, Lcom/android/camera/hdrplus/InFlightShotParameters;->getParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EO_()Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getOneCameraParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ14H86GRRKDT1M2S3KELP6AK31E9GMQPBKCLP76EO_()Lcom/google/android/gms/googlehelp/internal/common/zzd;

    move-result-object v2

    iget v4, v2, Lcom/google/android/gms/googlehelp/internal/common/zzd;->heading:I

    .line 303
    :try_start_2
    new-instance v5, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v5}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 304
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/camera/exif/ExifInterface;->readExif([B)V

    .line 307
    invoke-static {v5}, Lcom/android/camera/exif/ExifOrientation;->parseFromExif(Lcom/android/camera/exif/ExifInterface;)Lcom/android/camera/exif/ExifOrientation;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 311
    if-ltz v4, :cond_1

    .line 312
    :try_start_3
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v6, "M"

    .line 313
    invoke-virtual {v5, v3, v6}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    .line 316
    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    new-instance v7, Lcom/android/camera/util/Rational;

    int-to-long v8, v4

    const-wide/16 v10, 0x1

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/camera/util/Rational;-><init>(JJ)V

    .line 317
    invoke-virtual {v5, v6, v7}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v4

    .line 318
    invoke-virtual {v5, v3}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 319
    invoke-virtual {v5, v4}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    move-object v15, v2

    .line 327
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/hdrplus/HdrPlusState$8;->this$0:Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v2, v2, Lcom/android/camera/hdrplus/HdrPlusState;->gcamUsageStatistics:Lcom/android/camera/stats/GcamUsageStatistics;

    .line 329
    invoke-virtual {v14}, Lcom/android/camera/hdrplus/InFlightShotParameters;->getParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EO_()Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/session/StackableSession;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-virtual {v14}, Lcom/android/camera/hdrplus/InFlightShotParameters;->getParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EO_()Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getOneCameraParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ14H86GRRKDT1M2S3KELP6AK31E9GMQPBKCLP76EO_()Lcom/google/android/gms/googlehelp/internal/common/zzd;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/googlehelp/internal/common/zzd;->facing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v6, :cond_2

    const/4 v6, 0x1

    .line 333
    :goto_2
    invoke-virtual {v14}, Lcom/android/camera/hdrplus/InFlightShotParameters;->getParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EO_()Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getOneCameraParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ14H86GRRKDT1M2S3KELP6AK31E9GMQPBKCLP76EO_()Lcom/google/android/gms/googlehelp/internal/common/zzd;

    move-result-object v3

    iget v7, v3, Lcom/google/android/gms/googlehelp/internal/common/zzd;->zoom:F

    .line 334
    invoke-virtual {v14}, Lcom/android/camera/hdrplus/InFlightShotParameters;->getParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EO_()Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getOneCameraParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ14H86GRRKDT1M2S3KELP6AK31E9GMQPBKCLP76EO_()Lcom/google/android/gms/googlehelp/internal/common/zzd;

    move-result-object v3

    iget v3, v3, Lcom/google/android/gms/googlehelp/internal/common/zzd;->timerSeconds:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    move-object/from16 v0, v16

    array-length v3, v0

    int-to-long v10, v3

    .line 335
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 336
    invoke-virtual {v14}, Lcom/android/camera/hdrplus/InFlightShotParameters;->getParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EO_()Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/session/StackableSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->getFaces()Ljava/util/List;

    move-result-object v10

    .line 337
    invoke-virtual {v14}, Lcom/android/camera/hdrplus/InFlightShotParameters;->getParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EO_()Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/session/StackableSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->getActiveSensorSize()Landroid/graphics/Rect;

    move-result-object v11

    .line 338
    invoke-virtual {v14}, Lcom/android/camera/hdrplus/InFlightShotParameters;->getParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EO_()Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/session/StackableSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->getMeteringData()Lcom/google/common/logging/nano/eventprotos$MeteringData;

    move-result-object v12

    .line 339
    invoke-virtual {v14}, Lcom/android/camera/hdrplus/InFlightShotParameters;->getParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EO_()Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/session/StackableSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->getIsFlash()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move/from16 v3, p1

    .line 327
    invoke-virtual/range {v2 .. v13}, Lcom/android/camera/stats/GcamUsageStatistics;->captureDataReady(ILjava/lang/String;Lcom/android/camera/exif/ExifInterface;ZFLjava/lang/Float;Ljava/lang/Long;Ljava/util/List;Landroid/graphics/Rect;Lcom/google/common/logging/nano/eventprotos$MeteringData;Z)V

    .line 341
    invoke-static {}, Lcom/android/camera/hdrplus/HdrPlusState;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sending jpeg to progress"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    new-instance v2, Lcom/google/common/collect/Multimaps;

    new-instance v3, Lcom/android/camera/util/Size;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {v3, v0, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 346
    invoke-static {v15}, Lcom/android/camera/exif/ExifOrientation;->getRotation(Lcom/android/camera/exif/ExifOrientation;)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v4

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/google/common/collect/Multimaps;-><init>([BLcom/android/camera/util/Size;ILcom/android/camera/exif/ExifInterface;)V

    .line 348
    invoke-virtual {v14}, Lcom/android/camera/hdrplus/InFlightShotParameters;->getParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EO_()Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getProcessingProgress()Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;->setFinalResult$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I54PBJELM78EP9AO______(Lcom/google/common/collect/Multimaps;)V

    .line 349
    invoke-virtual {v14}, Lcom/android/camera/hdrplus/InFlightShotParameters;->getParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EO_()Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getProcessingProgress()Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;->close()V

    .line 352
    invoke-virtual {v14}, Lcom/android/camera/hdrplus/InFlightShotParameters;->getProcessingTask()Lcom/android/camera/processing/imagebackend/ImageShadowTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->unblock()V

    goto/16 :goto_0

    .line 321
    :catch_0
    move-exception v2

    move-object/from16 v17, v2

    move-object v2, v3

    move-object/from16 v3, v17

    .line 322
    :goto_3
    invoke-static {}, Lcom/android/camera/hdrplus/HdrPlusState;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Could not read exif from gcam jpeg"

    invoke-static {v4, v5, v3}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    const/4 v5, 0x0

    move-object v15, v2

    goto/16 :goto_1

    .line 331
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 321
    :catch_1
    move-exception v3

    goto :goto_3
.end method
