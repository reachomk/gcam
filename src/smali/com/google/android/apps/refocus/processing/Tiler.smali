.class public final Lcom/google/android/apps/refocus/processing/Tiler;
.super Ljava/lang/Object;
.source "Tiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/refocus/processing/Tiler$Tile;,
        Lcom/google/android/apps/refocus/processing/Tiler$Options;
    }
.end annotation


# static fields
.field public static final DEFAULT_OPTIONS:Lcom/google/android/apps/refocus/processing/Tiler$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x400

    .line 11
    new-instance v0, Lcom/google/android/apps/refocus/processing/Tiler$Options;

    const/16 v1, 0x19

    const/16 v2, 0x10

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/google/android/apps/refocus/processing/Tiler$Options;-><init>(IIII)V

    sput-object v0, Lcom/google/android/apps/refocus/processing/Tiler;->DEFAULT_OPTIONS:Lcom/google/android/apps/refocus/processing/Tiler$Options;

    return-void
.end method

.method private static alignmentDelta(Lcom/google/android/apps/refocus/processing/Tiler$Options;I)I
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lcom/google/android/apps/refocus/processing/Tiler$Options;->alignment:I

    iget v1, p0, Lcom/google/android/apps/refocus/processing/Tiler$Options;->alignment:I

    rem-int v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/refocus/processing/Tiler$Options;->alignment:I

    rem-int/2addr v0, v1

    return v0
.end method

.method public static computeTiling(Lcom/google/android/apps/refocus/processing/Tiler$Options;II)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/refocus/processing/Tiler$Options;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/refocus/processing/Tiler$Tile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x0

    .line 63
    iget v0, p0, Lcom/google/android/apps/refocus/processing/Tiler$Options;->apron:I

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    .line 64
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/refocus/processing/Tiler$Options;->maxWidth:I

    iget v2, p0, Lcom/google/android/apps/refocus/processing/Tiler$Options;->apron:I

    sub-int/2addr v1, v2

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 65
    iget v1, p0, Lcom/google/android/apps/refocus/processing/Tiler$Options;->apron:I

    sub-int v1, p2, v1

    add-int/lit8 v1, v1, -0x1

    .line 66
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/refocus/processing/Tiler$Options;->maxHeight:I

    iget v3, p0, Lcom/google/android/apps/refocus/processing/Tiler$Options;->apron:I

    sub-int/2addr v2, v3

    div-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x1

    .line 67
    iget v1, p0, Lcom/google/android/apps/refocus/processing/Tiler$Options;->apron:I

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v1, v3

    add-int/2addr v1, p1

    div-int/2addr v1, v0

    .line 68
    iget v3, p0, Lcom/google/android/apps/refocus/processing/Tiler$Options;->apron:I

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v2, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v3, p2

    div-int/2addr v3, v2

    .line 69
    invoke-static {p0, v1}, Lcom/google/android/apps/refocus/processing/Tiler;->alignmentDelta(Lcom/google/android/apps/refocus/processing/Tiler$Options;I)I

    move-result v4

    add-int v10, v1, v4

    .line 70
    invoke-static {p0, v3}, Lcom/google/android/apps/refocus/processing/Tiler;->alignmentDelta(Lcom/google/android/apps/refocus/processing/Tiler$Options;I)I

    move-result v1

    add-int/2addr v1, v3

    .line 71
    if-ge v0, v5, :cond_0

    move v9, v10

    .line 72
    :goto_0
    if-ge v2, v5, :cond_1

    move v0, v1

    .line 73
    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v4, v8

    .line 74
    :goto_2
    add-int v2, p2, v0

    sub-int/2addr v2, v1

    if-ge v4, v2, :cond_3

    move v7, v8

    .line 75
    :goto_3
    add-int v2, p1, v9

    sub-int/2addr v2, v10

    if-ge v7, v2, :cond_2

    .line 78
    sub-int v2, p1, v7

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 79
    sub-int v2, p2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 80
    invoke-static {p0, v3}, Lcom/google/android/apps/refocus/processing/Tiler;->alignmentDelta(Lcom/google/android/apps/refocus/processing/Tiler$Options;I)I

    move-result v6

    .line 81
    invoke-static {p0, v2}, Lcom/google/android/apps/refocus/processing/Tiler;->alignmentDelta(Lcom/google/android/apps/refocus/processing/Tiler$Options;I)I

    move-result v12

    .line 82
    if-lez v6, :cond_5

    if-gt v6, v7, :cond_5

    .line 83
    sub-int v5, v7, v6

    .line 84
    add-int/2addr v3, v6

    move v6, v5

    move v5, v3

    .line 86
    :goto_4
    if-lez v12, :cond_4

    if-gt v12, v4, :cond_4

    .line 87
    sub-int v3, v4, v12

    .line 88
    add-int/2addr v2, v12

    .line 90
    :goto_5
    new-instance v12, Lcom/google/android/apps/refocus/processing/Tiler$Tile;

    invoke-direct {v12, v6, v3, v5, v2}, Lcom/google/android/apps/refocus/processing/Tiler$Tile;-><init>(IIII)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/2addr v7, v9

    goto :goto_3

    .line 71
    :cond_0
    iget v0, p0, Lcom/google/android/apps/refocus/processing/Tiler$Options;->apron:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v10, v0

    move v9, v0

    goto :goto_0

    .line 72
    :cond_1
    iget v0, p0, Lcom/google/android/apps/refocus/processing/Tiler$Options;->apron:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    goto :goto_1

    .line 74
    :cond_2
    add-int/2addr v4, v0

    goto :goto_2

    .line 93
    :cond_3
    return-object v11

    :cond_4
    move v3, v4

    goto :goto_5

    :cond_5
    move v5, v3

    move v6, v7

    goto :goto_4
.end method
