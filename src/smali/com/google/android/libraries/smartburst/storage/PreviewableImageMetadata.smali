.class public Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;
.super Ljava/lang/Object;
.source "PreviewableImageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TMetadata:",
        "Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mDuration:J

.field protected final mHeight:I

.field protected final mMimeType:Ljava/lang/String;

.field protected final mTimestampNs:J

.field protected final mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JII)V
    .locals 8

    .prologue
    .line 57
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;-><init>(Ljava/lang/String;JIIJ)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JIIJ)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;->mMimeType:Ljava/lang/String;

    .line 39
    iput-wide p2, p0, Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;->mTimestampNs:J

    .line 40
    iput p5, p0, Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;->mHeight:I

    .line 41
    iput p4, p0, Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;->mWidth:I

    .line 42
    iput-wide p6, p0, Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;->mDuration:J

    .line 43
    return-void
.end method


# virtual methods
.method public final getDuration()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;->mDuration:J

    return-wide v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;->mHeight:I

    return v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;->mWidth:I

    return v0
.end method
