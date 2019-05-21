.class public final Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;
.super Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;
.source "ArtifactMetadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata",
        "<",
        "Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field private final mArtifactType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 11

    .prologue
    .line 50
    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;JIIJ)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIIJ)V
    .locals 9

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v4, p5

    move v5, p6

    move-wide/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;-><init>(Ljava/lang/String;JIIJ)V

    .line 33
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;->mArtifactType:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    if-ne p0, p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    instance-of v2, p1, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;

    if-nez v2, :cond_2

    move v0, v1

    .line 63
    goto :goto_0

    .line 66
    :cond_2
    check-cast p1, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;

    .line 68
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;->mArtifactType:Ljava/lang/String;

    .line 1054
    iget-object v3, p1, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;->mArtifactType:Ljava/lang/String;

    .line 68
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;->mMimeType:Ljava/lang/String;

    .line 1061
    iget-object v3, p1, Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;->mMimeType:Ljava/lang/String;

    .line 69
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;->mTimestampNs:J

    .line 1065
    iget-wide v4, p1, Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;->mTimestampNs:J

    .line 70
    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;->mWidth:I

    .line 1073
    iget v3, p1, Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;->mWidth:I

    .line 71
    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;->mHeight:I

    .line 2069
    iget v3, p1, Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;->mHeight:I

    .line 72
    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;->mDuration:J

    .line 2082
    iget-wide v4, p1, Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;->mDuration:J

    .line 73
    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 68
    goto :goto_0
.end method

.method public final getArtifactType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;->mArtifactType:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 78
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;->mArtifactType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;->mMimeType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;->mTimestampNs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;->mDuration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
