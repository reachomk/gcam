.class public final Lcom/android/camera/settings/SettingsUtil;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/settings/SettingsUtil$SelectedVideoResolutions;,
        Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;,
        Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCachedSelectedPictureSizes:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "SettingsUtil"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/settings/SettingsUtil;->TAG:Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/camera/one/OneCamera$Facing;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/settings/SettingsUtil;->sCachedSelectedPictureSizes:Ljava/util/EnumMap;

    .line 151
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    return-void
.end method

.method private static findClosestSize(Ljava/util/List;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 349
    .line 350
    const v1, 0x7fffffff

    move v2, v1

    move v3, v0

    move v1, v0

    .line 352
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 353
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    .line 354
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v0

    mul-int/2addr v0, v4

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 355
    if-ge v0, v2, :cond_0

    move v2, v0

    move v3, v1

    .line 352
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 360
    :cond_1
    return v3
.end method

.method public static getPhotoSize(Ljava/lang/String;Ljava/util/List;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            ")",
            "Lcom/android/camera/util/Size;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 165
    const-string v0, "1836x3264"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/android/camera/settings/ResolutionUtil;->NEXUS_5_LARGE_16_BY_9_SIZE:Lcom/android/camera/util/Size;

    .line 169
    :goto_0
    return-object v0

    .line 1198
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1200
    sget-object v0, Lcom/android/camera/settings/SettingsUtil;->sCachedSelectedPictureSizes:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1201
    sget-object v0, Lcom/android/camera/settings/SettingsUtil;->sCachedSelectedPictureSizes:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;

    .line 2055
    :goto_1
    const-string v1, "large"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2056
    iget-object v0, v0, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->large:Lcom/android/camera/util/Size;

    goto :goto_0

    .line 1207
    :cond_1
    new-instance v4, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;

    invoke-direct {v4}, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;-><init>()V

    .line 1210
    new-instance v0, Lcom/android/camera/settings/SettingsUtil$1;

    invoke-direct {v0}, Lcom/android/camera/settings/SettingsUtil$1;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1237
    invoke-interface {v2, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    iput-object v0, v4, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->large:Lcom/android/camera/util/Size;

    .line 1241
    iget-object v0, v4, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->large:Lcom/android/camera/util/Size;

    .line 1242
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v4, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->large:Lcom/android/camera/util/Size;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v0, v1

    .line 1246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1247
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    .line 1248
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 1250
    sub-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    .line 1251
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1259
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v11, :cond_4

    .line 1267
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1268
    sget-object v0, Lcom/android/camera/settings/SettingsUtil;->TAG:Ljava/lang/String;

    const-string v1, "Only one supported resolution."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    iget-object v0, v4, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->large:Lcom/android/camera/util/Size;

    iput-object v0, v4, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->medium:Lcom/android/camera/util/Size;

    .line 1270
    iget-object v0, v4, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->large:Lcom/android/camera/util/Size;

    iput-object v0, v4, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->small:Lcom/android/camera/util/Size;

    .line 1303
    :goto_4
    sget-object v0, Lcom/android/camera/settings/SettingsUtil;->sCachedSelectedPictureSizes:Ljava/util/EnumMap;

    invoke-virtual {v0, p2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v4

    .line 1304
    goto/16 :goto_1

    :cond_4
    move-object v1, v2

    .line 1259
    goto :goto_3

    .line 1271
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v12, :cond_6

    .line 1272
    sget-object v0, Lcom/android/camera/settings/SettingsUtil;->TAG:Ljava/lang/String;

    const-string v2, "Only two supported resolutions."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    iput-object v0, v4, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->medium:Lcom/android/camera/util/Size;

    .line 1274
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    iput-object v0, v4, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->small:Lcom/android/camera/util/Size;

    goto :goto_4

    .line 1275
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v11, :cond_7

    .line 1276
    sget-object v0, Lcom/android/camera/settings/SettingsUtil;->TAG:Ljava/lang/String;

    const-string v2, "Exactly three supported resolutions."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    iput-object v0, v4, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->medium:Lcom/android/camera/util/Size;

    .line 1278
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    iput-object v0, v4, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->small:Lcom/android/camera/util/Size;

    goto :goto_4

    .line 1283
    :cond_7
    iget-object v0, v4, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->large:Lcom/android/camera/util/Size;

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v0

    iget-object v2, v4, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->large:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v2

    mul-int/2addr v0, v2

    .line 1284
    int-to-float v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1285
    int-to-float v0, v0

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 1287
    invoke-static {v1, v2}, Lcom/android/camera/settings/SettingsUtil;->findClosestSize(Ljava/util/List;I)I

    move-result v3

    .line 1288
    invoke-static {v1, v0}, Lcom/android/camera/settings/SettingsUtil;->findClosestSize(Ljava/util/List;I)I

    move-result v2

    .line 1293
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1294
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_8

    .line 1295
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    .line 1300
    :goto_5
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    iput-object v0, v4, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->medium:Lcom/android/camera/util/Size;

    .line 1301
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    iput-object v0, v4, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->small:Lcom/android/camera/util/Size;

    goto/16 :goto_4

    .line 1297
    :cond_8
    add-int/lit8 v0, v3, -0x1

    goto :goto_5

    .line 2057
    :cond_9
    const-string v1, "medium"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2058
    iget-object v0, v0, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->medium:Lcom/android/camera/util/Size;

    goto/16 :goto_0

    .line 2059
    :cond_a
    const-string v1, "small"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2060
    iget-object v0, v0, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->small:Lcom/android/camera/util/Size;

    goto/16 :goto_0

    .line 2061
    :cond_b
    if-eqz p0, :cond_c

    const-string v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v11, :cond_c

    .line 2062
    invoke-static {p0}, Lcom/android/camera/util/Size;->fromSettingString(Ljava/lang/String;)Lcom/android/camera/util/Size;

    move-result-object v1

    .line 2063
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v0, v1

    .line 2064
    goto/16 :goto_0

    .line 2067
    :cond_c
    iget-object v0, v0, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->large:Lcom/android/camera/util/Size;

    goto/16 :goto_0

    :cond_d
    move v0, v3

    goto :goto_5
.end method
