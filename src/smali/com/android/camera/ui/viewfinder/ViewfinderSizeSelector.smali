.class public final Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;
.super Ljava/lang/Object;
.source "ViewfinderSizeSelector.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final displaySize:Lcom/android/camera/util/Size;

.field private final gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "ViewfinderSizeSel"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/util/Size;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;->displaySize:Lcom/android/camera/util/Size;

    .line 36
    iput-object p2, p0, Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 37
    return-void
.end method

.method private final selectClosestMatchingSize(Ljava/util/List;D)Lcom/android/camera/util/Size;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;D)",
            "Lcom/android/camera/util/Size;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 106
    const/4 v1, -0x1

    .line 107
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;->displaySize:Lcom/android/camera/util/Size;

    .line 115
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 117
    const/4 v0, 0x0

    move v4, v1

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 118
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    .line 119
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    .line 120
    sub-double/2addr v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v6, v6, v8

    if-gtz v6, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    .line 125
    cmpg-double v8, v6, v2

    if-gez v8, :cond_2

    move-wide v2, v6

    move v4, v1

    .line 117
    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 104
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 128
    :cond_2
    cmpl-double v8, v6, v2

    if-nez v8, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v0

    if-ge v0, v5, :cond_0

    move-wide v2, v6

    move v4, v1

    .line 133
    goto :goto_2

    .line 140
    :cond_3
    const/4 v0, -0x1

    if-ne v4, v0, :cond_5

    .line 141
    sget-object v0, Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x39

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No preview size match the aspect ratio. available sizes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 143
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 144
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    .line 145
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v6, v6, v2

    if-gez v6, :cond_4

    .line 147
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v2, v0

    move v4, v1

    .line 143
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 151
    :cond_5
    if-ltz v4, :cond_6

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 152
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    return-object v0

    .line 151
    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method public final selectViewfinderSize(Ljava/util/List;Lcom/android/camera/util/AspectRatio;Lcom/android/camera/one/OneCamera$Facing;Z)Lcom/android/camera/util/Size;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;",
            "Lcom/android/camera/util/AspectRatio;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "Z)",
            "Lcom/android/camera/util/Size;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x438

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p2}, Lcom/android/camera/util/AspectRatio;->toDouble()D

    move-result-wide v2

    .line 1061
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 1068
    if-nez p4, :cond_0

    .line 1156
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p3, v0, :cond_3

    .line 1158
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->getBlacklistedPreviewResolutionsFront()Ljava/lang/String;

    move-result-object v0

    .line 1160
    :goto_1
    invoke-static {p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->filterBlackListedSizes(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1074
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    .line 1075
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v0

    if-gt v0, v7, :cond_1

    .line 1076
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 1062
    goto :goto_0

    .line 1159
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->getBlacklistedPreviewResolutionsBack()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1080
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1082
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    .line 1083
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v5

    if-gt v5, v7, :cond_5

    .line 1084
    new-instance v5, Lcom/android/camera/util/Size;

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v5, v6, v0}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1088
    :cond_6
    invoke-direct {p0, v4, v2, v3}, Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;->selectClosestMatchingSize(Ljava/util/List;D)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 49
    return-object v0
.end method

.method public final selectViewfinderSize(Ljava/util/List;Lcom/android/camera/util/Size;Lcom/android/camera/one/OneCamera$Facing;Z)Lcom/android/camera/util/Size;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "Z)",
            "Lcom/android/camera/util/Size;"
        }
    .end annotation

    .prologue
    .line 42
    .line 43
    invoke-static {p2}, Lcom/android/camera/util/AspectRatio;->of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;->selectViewfinderSize(Ljava/util/List;Lcom/android/camera/util/AspectRatio;Lcom/android/camera/one/OneCamera$Facing;Z)Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method
