.class public final Lcom/google/android/libraries/smartburst/segmentation/selectors/LabeledSegmentSelector;
.super Lcom/google/android/libraries/smartburst/segmentation/SegmentSelector;
.source "LabeledSegmentSelector.java"


# instance fields
.field private final mLabelsToSelect:[Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/segmentation/SegmentSelector;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/segmentation/selectors/LabeledSegmentSelector;->mLabelsToSelect:[Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;

    .line 30
    return-void
.end method


# virtual methods
.method public final acceptSegment(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->getLabels()Ljava/util/Set;

    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/segmentation/selectors/LabeledSegmentSelector;->mLabelsToSelect:[Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 36
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 37
    const/4 v0, 0x1

    .line 40
    :cond_0
    return v0

    .line 35
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 45
    const-string v0, "LabeledSegmentSelector[labels="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/segmentation/selectors/LabeledSegmentSelector;->mLabelsToSelect:[Lcom/google/android/libraries/smartburst/segmentation/FrameSegment$Label;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
