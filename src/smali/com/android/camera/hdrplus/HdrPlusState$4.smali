.class final Lcom/android/camera/hdrplus/HdrPlusState$4;
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
    .line 142
    iput-object p1, p0, Lcom/android/camera/hdrplus/HdrPlusState$4;->this$0:Lcom/android/camera/hdrplus/HdrPlusState;

    invoke-direct {p0}, Lcom/google/googlex/gcam/EncodedBlobCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final Run(ILcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;JII)V
    .locals 7

    .prologue
    .line 146
    invoke-static {}, Lcom/android/camera/hdrplus/HdrPlusState;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x4d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Gcam merged DNG data ready: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, burstId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusState$4;->this$0:Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v3, v1, Lcom/android/camera/hdrplus/HdrPlusState;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusState$4;->this$0:Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v1, v1, Lcom/android/camera/hdrplus/HdrPlusState;->inFlightShots:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/camera/hdrplus/InFlightShotParameters;

    move-object v2, v0

    .line 151
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {v2}, Lcom/android/camera/hdrplus/InFlightShotParameters;->getGcamDngImageWriter()Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;

    move-result-object v1

    .line 155
    invoke-virtual {v2}, Lcom/android/camera/hdrplus/InFlightShotParameters;->getParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EO_()Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    move-result-object v2

    long-to-int v3, p3

    .line 156
    invoke-static {p2, v3}, Lcom/google/googlex/gcam/GcamModule;->ByteBufferViewOfNativePointer(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    new-instance v6, Lcom/android/camera/hdrplus/HdrPlusState$4$1;

    invoke-direct {v6, p2}, Lcom/android/camera/hdrplus/HdrPlusState$4$1;-><init>(Lcom/google/googlex/gcam/SWIGTYPE_p_unsigned_char;)V

    move v4, p5

    move v5, p6

    .line 154
    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;->processDngImageData$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMJ3AC5R62BRED5NIUGJPEHIK4TB6CPIN4EQ995666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQJC5J6AGRCDTPMAOB2DHIJMAAM(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;Ljava/nio/ByteBuffer;IILcom/google/android/apps/camera/async/SafeCloseable;)V

    .line 165
    return-void

    .line 151
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
