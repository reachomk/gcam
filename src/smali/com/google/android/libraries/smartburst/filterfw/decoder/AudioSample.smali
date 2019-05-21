.class public Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioSample;
.super Ljava/lang/Object;
.source "AudioSample.java"


# instance fields
.field public final bytes:[B

.field public final channelCount:I

.field public final sampleRate:I

.field public final timestampUs:J


# direct methods
.method public constructor <init>(II[BJ)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioSample;->sampleRate:I

    .line 28
    iput p2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioSample;->channelCount:I

    .line 29
    iput-object p3, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioSample;->bytes:[B

    .line 30
    iput-wide p4, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioSample;->timestampUs:J

    .line 31
    return-void
.end method
