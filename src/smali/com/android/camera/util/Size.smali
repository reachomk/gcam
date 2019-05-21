.class public final Lcom/android/camera/util/Size;
.super Ljava/lang/Object;
.source "Size.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/camera/util/Size;",
        ">;"
    }
.end annotation


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/android/camera/util/Size;->width:I

    .line 41
    iput p2, p0, Lcom/android/camera/util/Size;->height:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/camera/util/Size;->width:I

    .line 30
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/camera/util/Size;->height:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/util/Size;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/util/Size;->width:I

    .line 36
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/util/Size;->height:I

    .line 37
    return-void
.end method

.method public static convert([Landroid/util/Size;)[Lcom/android/camera/util/Size;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 194
    if-nez p0, :cond_0

    .line 195
    new-array v0, v0, [Lcom/android/camera/util/Size;

    .line 201
    :goto_0
    return-object v0

    .line 197
    :cond_0
    array-length v1, p0

    new-array v1, v1, [Lcom/android/camera/util/Size;

    .line 198
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 199
    new-instance v2, Lcom/android/camera/util/Size;

    aget-object v3, p0, v0

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    aget-object v4, p0, v0

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/util/Size;-><init>(II)V

    aput-object v2, v1, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 201
    goto :goto_0
.end method

.method public static fromSettingString(Ljava/lang/String;)Lcom/android/camera/util/Size;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    const-string v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 77
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 82
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 83
    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 84
    new-instance v1, Lcom/android/camera/util/Size;

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static largestByArea(Ljava/util/List;)Lcom/android/camera/util/Size;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;)",
            "Lcom/android/camera/util/Size;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 300
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 301
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    .line 302
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    .line 303
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    .line 304
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v6

    .line 305
    cmp-long v5, v6, v2

    if-lez v5, :cond_2

    :goto_2
    move-object v1, v0

    .line 308
    goto :goto_1

    :cond_0
    move v0, v1

    .line 300
    goto :goto_0

    .line 309
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public static toSettingString(Lcom/android/camera/util/Size;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 61
    .line 1122
    iget v0, p0, Lcom/android/camera/util/Size;->width:I

    .line 61
    const-string v1, "x"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1126
    iget v2, p0, Lcom/android/camera/util/Size;->height:I

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final area()J
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/android/camera/util/Size;->width:I

    iget v1, p0, Lcom/android/camera/util/Size;->height:I

    mul-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public final asLandscape()Lcom/android/camera/util/Size;
    .locals 2

    .prologue
    .line 142
    .line 1265
    iget v0, p0, Lcom/android/camera/util/Size;->width:I

    iget v1, p0, Lcom/android/camera/util/Size;->height:I

    if-lt v0, v1, :cond_0

    .line 145
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->transpose()Lcom/android/camera/util/Size;

    move-result-object p0

    goto :goto_0
.end method

.method public final asPortrait()Lcom/android/camera/util/Size;
    .locals 2

    .prologue
    .line 153
    .line 1273
    iget v0, p0, Lcom/android/camera/util/Size;->height:I

    iget v1, p0, Lcom/android/camera/util/Size;->width:I

    if-lt v0, v1, :cond_0

    .line 156
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->transpose()Lcom/android/camera/util/Size;

    move-result-object p0

    goto :goto_0
.end method

.method public final asRect()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 316
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/camera/util/Size;->width:I

    iget v2, p0, Lcom/android/camera/util/Size;->height:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final asSize21()Landroid/util/Size;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 95
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/android/camera/util/Size;->width:I

    iget v2, p0, Lcom/android/camera/util/Size;->height:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public final aspectRatio()F
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Lcom/android/camera/util/Size;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/util/Size;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 21
    check-cast p1, Lcom/android/camera/util/Size;

    .line 2321
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 21
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 175
    instance-of v1, p1, Lcom/android/camera/util/Size;

    if-nez v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    check-cast p1, Lcom/android/camera/util/Size;

    .line 180
    iget v1, p1, Lcom/android/camera/util/Size;->width:I

    iget v2, p0, Lcom/android/camera/util/Size;->width:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/android/camera/util/Size;->height:I

    iget v2, p0, Lcom/android/camera/util/Size;->height:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getAspectRatio()Lcom/android/camera/util/AspectRatio;
    .locals 2

    .prologue
    .line 170
    iget v0, p0, Lcom/android/camera/util/Size;->width:I

    iget v1, p0, Lcom/android/camera/util/Size;->height:I

    invoke-static {v0, v1}, Lcom/android/camera/util/AspectRatio;->of(II)Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/camera/util/Size;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/android/camera/util/Size;->width:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 185
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/util/Size;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/camera/util/Size;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2079
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 185
    return v0
.end method

.method public final height()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/camera/util/Size;->height:I

    return v0
.end method

.method public final rotate(Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/android/camera/util/Size;
    .locals 3

    .prologue
    .line 284
    invoke-virtual {p1}, Lcom/google/android/apps/camera/util/layout/Orientation;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 288
    :pswitch_0
    new-instance v0, Lcom/android/camera/util/Size;

    iget v1, p0, Lcom/android/camera/util/Size;->width:I

    iget v2, p0, Lcom/android/camera/util/Size;->height:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 291
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/android/camera/util/Size;

    iget v1, p0, Lcom/android/camera/util/Size;->height:I

    iget v2, p0, Lcom/android/camera/util/Size;->width:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 131
    iget v0, p0, Lcom/android/camera/util/Size;->width:I

    iget v1, p0, Lcom/android/camera/util/Size;->height:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transpose()Lcom/android/camera/util/Size;
    .locals 3

    .prologue
    .line 135
    new-instance v0, Lcom/android/camera/util/Size;

    iget v1, p0, Lcom/android/camera/util/Size;->height:I

    iget v2, p0, Lcom/android/camera/util/Size;->width:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    return-object v0
.end method

.method public final width()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/camera/util/Size;->width:I

    return v0
.end method
