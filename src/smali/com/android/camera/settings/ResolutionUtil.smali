.class public final Lcom/android/camera/settings/ResolutionUtil;
.super Ljava/lang/Object;
.source "ResolutionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;
    }
.end annotation


# static fields
.field public static NEXUS_5_LARGE_16_BY_9_SIZE:Lcom/android/camera/util/Size;

.field private static sDesiredAspectRatioSizes:[Lcom/android/camera/util/Size;

.field private static sDesiredAspectRatios:[Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 30
    new-instance v0, Lcom/android/camera/util/Rational;

    const-wide/16 v2, 0x10

    const-wide/16 v4, 0x9

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/camera/util/Rational;-><init>(JJ)V

    .line 31
    new-instance v0, Lcom/android/camera/util/Rational;

    const-wide/16 v2, 0x4

    const-wide/16 v4, 0x3

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/camera/util/Rational;-><init>(JJ)V

    .line 36
    new-instance v0, Lcom/android/camera/util/Size;

    const/16 v1, 0xcc0

    const/16 v2, 0x72c

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/settings/ResolutionUtil;->NEXUS_5_LARGE_16_BY_9_SIZE:Lcom/android/camera/util/Size;

    .line 43
    new-array v0, v8, [Ljava/lang/Float;

    const v1, 0x3fe38e39

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x3faaaaab

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/camera/settings/ResolutionUtil;->sDesiredAspectRatios:[Ljava/lang/Float;

    .line 45
    new-array v0, v8, [Lcom/android/camera/util/Size;

    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0x10

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/camera/util/Size;

    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/camera/settings/ResolutionUtil;->sDesiredAspectRatioSizes:[Lcom/android/camera/util/Size;

    return-void
.end method

.method private static area(Lcom/android/camera/util/Size;)I
    .locals 2

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public static aspectRatioDenominator(Lcom/android/camera/util/Size;)I
    .locals 4

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->width()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 309
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 310
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 311
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    div-int/2addr v0, v1

    .line 312
    return v0
.end method

.method public static aspectRatioNumerator(Lcom/android/camera/util/Size;)I
    .locals 1

    .prologue
    .line 279
    invoke-static {p0}, Lcom/android/camera/settings/ResolutionUtil;->reduce(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v0

    return v0
.end method

.method private static fuzzAspectRatio(F)F
    .locals 8

    .prologue
    .line 193
    sget-object v2, Lcom/android/camera/settings/ResolutionUtil;->sDesiredAspectRatios:[Ljava/lang/Float;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 194
    sub-float v4, p0, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3fa999999999999aL    # 0.05

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    move p0, v0

    .line 198
    :cond_0
    return p0

    .line 193
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static getApproximateSize(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;
    .locals 3

    .prologue
    .line 292
    invoke-static {p0}, Lcom/android/camera/settings/ResolutionUtil;->reduce(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 293
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/camera/settings/ResolutionUtil;->fuzzAspectRatio(F)F

    move-result v1

    .line 294
    sget-object v2, Lcom/android/camera/settings/ResolutionUtil;->sDesiredAspectRatios:[Ljava/lang/Float;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 295
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 296
    sget-object v0, Lcom/android/camera/settings/ResolutionUtil;->sDesiredAspectRatioSizes:[Lcom/android/camera/util/Size;

    aget-object v0, v0, v1

    .line 298
    :cond_0
    return-object v0
.end method

.method public static getDisplayMetrics(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;
    .locals 2

    .prologue
    .line 363
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 364
    if-eqz p0, :cond_0

    .line 365
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 367
    :cond_0
    return-object v0
.end method

.method public static getDisplayableSizesFromSupported(Ljava/util/List;Z)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    .line 1213
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1215
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    .line 1216
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1219
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/android/camera/settings/ResolutionUtil;->fuzzAspectRatio(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 1220
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;

    .line 1221
    if-nez v1, :cond_0

    .line 1222
    new-instance v1, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;-><init>(B)V

    .line 1223
    iput-object v4, v1, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->aspectRatio:Ljava/lang/Float;

    .line 1224
    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->add(Lcom/android/camera/util/Size;)V

    goto :goto_0

    .line 1228
    :cond_1
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->instance()Lcom/android/camera/util/ApiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus5()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1229
    const v0, 0x3fe38e39

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;

    sget-object v1, Lcom/android/camera/settings/ResolutionUtil;->NEXUS_5_LARGE_16_BY_9_SIZE:Lcom/android/camera/util/Size;

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->add(Lcom/android/camera/util/Size;)V

    .line 1231
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 1232
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1233
    new-instance v0, Lcom/android/camera/settings/ResolutionUtil$1;

    invoke-direct {v0}, Lcom/android/camera/settings/ResolutionUtil$1;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 108
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;

    iget-object v0, v0, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->aspectRatio:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 112
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v2, 0x0

    move v4, v2

    :cond_3
    :goto_1
    if-ge v4, v5, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    check-cast v2, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;

    .line 113
    iget-object v2, v2, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->aspectRatio:Ljava/lang/Float;

    .line 114
    sget-object v6, Lcom/android/camera/settings/ResolutionUtil;->sDesiredAspectRatios:[Ljava/lang/Float;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 115
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 116
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v3

    .line 121
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v8, :cond_7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v6, v3, 0x1

    check-cast v2, Ljava/lang/Float;

    move-object v3, v1

    .line 122
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v4, 0x0

    move v5, v4

    :cond_5
    :goto_3
    if-ge v5, v9, :cond_6

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    check-cast v4, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;

    .line 123
    iget-object v10, v4, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->aspectRatio:Ljava/lang/Float;

    .line 124
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v10

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    const-wide v12, 0x3fa999999999999aL    # 0.05

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_5

    .line 125
    iget-object v4, v4, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->sizes:Ljava/util/List;

    invoke-static {v4}, Lcom/android/camera/settings/ResolutionUtil;->pickUpToThree(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_6
    move v3, v6

    .line 128
    goto :goto_2

    .line 129
    :cond_7
    return-object v7
.end method

.method private static pickUpToThree(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    .line 155
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 156
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    .line 157
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/Size;

    .line 160
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v0}, Lcom/android/camera/settings/ResolutionUtil;->area(Lcom/android/camera/util/Size;)I

    move-result v5

    int-to-double v8, v5

    mul-double/2addr v6, v8

    .line 161
    invoke-static {v1}, Lcom/android/camera/settings/ResolutionUtil;->area(Lcom/android/camera/util/Size;)I

    move-result v5

    int-to-double v8, v5

    cmpg-double v5, v8, v6

    if-gez v5, :cond_0

    .line 165
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2}, Lcom/android/camera/settings/ResolutionUtil;->area(Lcom/android/camera/util/Size;)I

    move-result v5

    int-to-double v8, v5

    sub-double v8, v6, v8

    invoke-static {v1}, Lcom/android/camera/settings/ResolutionUtil;->area(Lcom/android/camera/util/Size;)I

    move-result v5

    int-to-double v10, v5

    sub-double v6, v10, v6

    cmpg-double v5, v8, v6

    if-gez v5, :cond_1

    .line 166
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v12, :cond_3

    move-object v2, v1

    .line 175
    goto :goto_0

    .line 168
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 178
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v12, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 179
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_4
    return-object v3
.end method

.method private static reduce(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;
    .locals 5

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->width()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 265
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 266
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 267
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    div-int/2addr v3, v4

    .line 268
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    div-int/2addr v0, v1

    .line 269
    new-instance v1, Lcom/android/camera/util/Size;

    invoke-direct {v1, v3, v0}, Lcom/android/camera/util/Size;-><init>(II)V

    return-object v1
.end method
