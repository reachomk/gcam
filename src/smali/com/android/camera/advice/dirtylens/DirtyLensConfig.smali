.class public Lcom/android/camera/advice/dirtylens/DirtyLensConfig;
.super Ljava/lang/Object;
.source "DirtyLensConfig.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;
    .locals 1

    .prologue
    .line 1047
    new-instance v0, Lcom/android/camera/advice/dirtylens/proxy/NativeFloatDequeProxy;

    invoke-direct {v0}, Lcom/android/camera/advice/dirtylens/proxy/NativeFloatDequeProxy;-><init>()V

    .line 1048
    invoke-static {p0, v0}, Lcom/android/camera/advice/dirtylens/DirtyLensConfig;->decode(Ljava/lang/String;Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;)Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;

    move-result-object v0

    return-object v0
.end method

.method static decode(Ljava/lang/String;Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;)Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;
    .locals 4

    .prologue
    .line 1053
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1054
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1056
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;->pushBack(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1054
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1061
    :cond_0
    return-object p1

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static encode(Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1028
    const/4 v0, 0x0

    :goto_0
    int-to-long v2, v0

    invoke-interface {p0}, Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;->size()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1029
    invoke-interface {p0, v0}, Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;->getItem(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1030
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1032
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static provideImageCaptureCommand$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUKRKC5Q6AL3IC5HMMQBECT4MQOB7CL1M2S3KELP6AGRFDLMM2RJ47CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPF95MM2PR58DGN0T3LE9IK6RRDDLGMSP1R(Lcom/google/common/primitives/Floats;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 0

    .prologue
    .line 1429
    return-object p0
.end method

.method public static provideImageCaptureStateTracker$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUKRKC5Q6AL3IC5HMMQBECT4MQOB7CL1M2S3KELP6AGRFDLMM2RJ47CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPF95MM2PR58DGN0T3LE9IL6T31EHIL8SJ1CDLMASHR(Lcom/google/common/primitives/Floats;)Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker;
    .locals 0

    .prologue
    .line 1436
    return-object p0
.end method

.method public static provideStateTrackingImageCaptureCommand$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUGBLEHNKCR31EDK5KSRC91I74K3CELPKIRB1CTIK6OBGEHQN4PA3DTMMQOBECH362ORKDTP7IEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TO6GRRKDSNM6RRDDLGMSP3J5T9MIRJ7DHIKCR31EDK46RRDDLGMSP26C5HN8RRIF4TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFCDNMQRB1DPI76BQICLPN8SJ9CDQ6AP22ELP76T2QEDM46RRDDLGMSP26C5HN8RRIF4TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFCDNMQRB1DPI76BQICLPN8SJ9CDQ6AP22ELP76T23DTMMQOBECH362ORKDTP7IEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR8CHP70R3LECNKGP3IA1M7ASQ6CLGN8TBICL1MURJ6D5JJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TO6GRRKDSNM6RRDDLGMSP3J5T9N8OBKCLA74OB3DDKMSPQ9DLGMEPA3C5O78TBICL1MURBDC5N68EO_(Lcom/android/camera/one/v2/photo/commands/AutoFlashZslHdrPlusImageCaptureCommandFactory;Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory;Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;Lcom/google/common/primitives/Booleans;Lcom/android/camera/hdrplus/HdrPlusFeatureConfig;)Lcom/google/common/primitives/Floats;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x3

    .line 1448
    invoke-virtual {p4}, Lcom/android/camera/hdrplus/HdrPlusFeatureConfig;->getZslBufferSize()I

    move-result v5

    .line 1451
    invoke-virtual {p1}, Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory;->create()Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v1

    .line 1453
    invoke-virtual {p3, v0, v4}, Lcom/google/common/primitives/Booleans;->create(II)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v3

    .line 1456
    invoke-virtual {p2, v0, v4, v3}, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;->create(IILcom/android/camera/one/v2/photo/ImageCaptureCommand;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v2

    move-object v0, p0

    .line 1462
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/one/v2/photo/commands/AutoFlashZslHdrPlusImageCaptureCommandFactory;->create(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;II)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v0

    .line 1469
    new-instance v1, Lcom/google/common/primitives/Floats;

    invoke-direct {v1, v0}, Lcom/google/common/primitives/Floats;-><init>(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)V

    return-object v1
.end method
