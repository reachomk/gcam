.class public final Lcom/google/android/libraries/smartburst/segmentation/selectors/MinCountSegmentSelector;
.super Lcom/google/android/libraries/smartburst/segmentation/SegmentSelector;
.source "MinCountSegmentSelector.java"


# instance fields
.field private final mMinCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/segmentation/SegmentSelector;-><init>()V

    .line 23
    iput p1, p0, Lcom/google/android/libraries/smartburst/segmentation/selectors/MinCountSegmentSelector;->mMinCount:I

    .line 24
    return-void
.end method


# virtual methods
.method public final acceptSegment(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)Z
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/smartburst/segmentation/selectors/MinCountSegmentSelector;->mMinCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 33
    const-string v0, "MinCountSegmentSelector[minCount="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/smartburst/segmentation/selectors/MinCountSegmentSelector;->mMinCount:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
