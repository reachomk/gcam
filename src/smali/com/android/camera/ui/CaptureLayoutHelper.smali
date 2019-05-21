.class public final Lcom/android/camera/ui/CaptureLayoutHelper;
.super Ljava/lang/Object;
.source "CaptureLayoutHelper.java"

# interfaces
.implements Lcom/android/camera/ui/CameraAppUI$NonDecorWindowSizeChangedListener;
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;,
        Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activity:Lcom/android/camera/activity/gca/GcaActivity;

.field private activityWindow:Landroid/view/Window;

.field private apiHelper:Lcom/android/camera/util/ApiHelper;

.field private aspectRatio:F

.field private final bottomBarMinHeight:I

.field private final bottomBarMultiwindowHeight:I

.field private final burstChipBottomPadding:I

.field private final burstChipHeight:I

.field private isMultiWindow:Z

.field private isReverse:Z

.field private final isTablet:Z

.field private lastOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

.field private final orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

.field private final paginatorRectHeight:I

.field private final paginatorRectWidth:I

.field private positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

.field private final resources:Landroid/content/res/Resources;

.field private showBottomBar:Z

.field private final tabletBottomBarContentSize:I

.field private final trace:Lcom/android/camera/debug/trace/Trace;

.field private windowHeight:I

.field private windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "CaptLayoutHelper"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/CaptureLayoutHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/camera/burst/OrientationLockController;Landroid/view/Window;Lcom/android/camera/util/ApiHelper;Lcom/android/camera/activity/gca/GcaActivity;Lcom/android/camera/debug/trace/Trace;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->windowWidth:I

    .line 52
    iput v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->windowHeight:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->aspectRatio:F

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->showBottomBar:Z

    .line 139
    iput-object p1, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->resources:Landroid/content/res/Resources;

    .line 140
    iput-object p2, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 141
    iput-object p3, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->activityWindow:Landroid/view/Window;

    .line 142
    iput-object p4, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 143
    iput-object p5, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->activity:Lcom/android/camera/activity/gca/GcaActivity;

    .line 144
    iput-object p6, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 146
    const v0, 0x7f0c016c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->bottomBarMinHeight:I

    .line 147
    const v0, 0x7f0c016b

    .line 148
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->bottomBarMultiwindowHeight:I

    .line 150
    invoke-virtual {p4, p1}, Lcom/android/camera/util/ApiHelper;->isTablet(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->isTablet:Z

    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0c01bc

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->tabletBottomBarContentSize:I

    .line 153
    const v0, 0x7f0c01b6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->paginatorRectHeight:I

    .line 154
    const v0, 0x7f0c01b7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->paginatorRectWidth:I

    .line 155
    const v0, 0x7f0c01a6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->burstChipBottomPadding:I

    .line 156
    const v0, 0x7f0c01c9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->burstChipHeight:I

    .line 157
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->checkMultiWindow()V

    .line 158
    return-void
.end method

.method private final checkMultiWindow()V
    .locals 2

    .prologue
    .line 743
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isNOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->activity:Lcom/android/camera/activity/gca/GcaActivity;

    invoke-virtual {v0}, Lcom/android/camera/activity/gca/GcaActivity;->isInMultiWindowMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->isMultiWindow:Z

    .line 745
    iget-boolean v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->isMultiWindow:Z

    if-eqz v0, :cond_0

    .line 746
    sget-object v0, Lcom/android/camera/ui/CaptureLayoutHelper;->TAG:Ljava/lang/String;

    const-string v1, "Switching to multi-window mode"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :cond_0
    return-void
.end method

.method private getBottomBarRect()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    if-nez v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->updatePositionConfiguration()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    if-nez v0, :cond_1

    .line 210
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 212
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-object v1, v1, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private final getNaturalPortraitUIOrientation()Lcom/android/camera/util/layout/NaturalOrientation;
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->naturalUiOrientation()Lcom/android/camera/util/layout/NaturalOrientation;

    move-result-object v0

    .line 729
    iget-object v1, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v1}, Lcom/android/camera/burst/OrientationLockController;->isDefaultOrientationPortrait()Z

    move-result v1

    if-nez v1, :cond_0

    .line 733
    sget-object v1, Lcom/android/camera/util/layout/NaturalOrientation;->LANDSCAPE:Lcom/android/camera/util/layout/NaturalOrientation;

    if-ne v0, v1, :cond_1

    .line 734
    sget-object v0, Lcom/android/camera/util/layout/NaturalOrientation;->LANDSCAPE_REVERSED:Lcom/android/camera/util/layout/NaturalOrientation;

    .line 739
    :cond_0
    :goto_0
    return-object v0

    .line 735
    :cond_1
    sget-object v1, Lcom/android/camera/util/layout/NaturalOrientation;->LANDSCAPE_REVERSED:Lcom/android/camera/util/layout/NaturalOrientation;

    if-ne v0, v1, :cond_0

    .line 736
    sget-object v0, Lcom/android/camera/util/layout/NaturalOrientation;->LANDSCAPE:Lcom/android/camera/util/layout/NaturalOrientation;

    goto :goto_0
.end method

.method private getNavigationBarDimension()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 224
    iget-object v1, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    if-nez v1, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->updatePositionConfiguration()V

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    if-nez v1, :cond_2

    .line 232
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->isMultiWindow:Z

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget v0, v0, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->navigationBarDimension:I

    goto :goto_0
.end method

.method private final getPhotoVideoPaginatorRect()Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getUncoveredPreviewRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 773
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getBottomBarRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 774
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getNaturalPortraitUIOrientation()Lcom/android/camera/util/layout/NaturalOrientation;

    move-result-object v2

    .line 776
    iget v3, v1, Landroid/graphics/RectF;->left:F

    .line 778
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->paginatorRectWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 780
    sget-object v4, Lcom/android/camera/util/layout/NaturalOrientation;->LANDSCAPE:Lcom/android/camera/util/layout/NaturalOrientation;

    if-eq v2, v4, :cond_0

    sget-object v4, Lcom/android/camera/util/layout/NaturalOrientation;->LANDSCAPE_REVERSED:Lcom/android/camera/util/layout/NaturalOrientation;

    if-ne v2, v4, :cond_1

    .line 782
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->paginatorRectHeight:I

    int-to-float v0, v0

    .line 794
    :goto_0
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v1, v0

    .line 796
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->paginatorRectWidth:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    iget v4, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->paginatorRectHeight:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    invoke-direct {v1, v3, v0, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1

    .line 786
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->bottomBarMinHeight:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 788
    iget-boolean v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->isReverse:Z

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->paginatorRectHeight:I

    int-to-float v0, v0

    goto :goto_0

    .line 791
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->isReverse:Z

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->paginatorRectHeight:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUncoveredPreviewRect()Landroid/graphics/RectF;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    if-nez v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->updatePositionConfiguration()V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    if-nez v0, :cond_2

    .line 276
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 347
    :cond_1
    :goto_0
    return-object v0

    .line 279
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getNaturalPortraitUIOrientation()Lcom/android/camera/util/layout/NaturalOrientation;

    move-result-object v2

    .line 284
    iget v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->aspectRatio:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->showBottomBar:Z

    if-nez v0, :cond_6

    .line 285
    iget-object v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-object v1, v0, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    .line 2708
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2709
    sget-object v1, Lcom/android/camera/util/layout/NaturalOrientation;->PORTRAIT:Lcom/android/camera/util/layout/NaturalOrientation;

    if-eq v2, v1, :cond_3

    sget-object v1, Lcom/android/camera/util/layout/NaturalOrientation;->PORTRAIT_REVERSED:Lcom/android/camera/util/layout/NaturalOrientation;

    if-ne v2, v1, :cond_4

    .line 2712
    :cond_3
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget v2, v2, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->navigationBarDimension:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 2713
    :cond_4
    sget-object v1, Lcom/android/camera/util/layout/NaturalOrientation;->LANDSCAPE:Lcom/android/camera/util/layout/NaturalOrientation;

    if-ne v2, v1, :cond_5

    .line 2715
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget v2, v2, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->navigationBarDimension:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 2716
    :cond_5
    sget-object v1, Lcom/android/camera/util/layout/NaturalOrientation;->LANDSCAPE_REVERSED:Lcom/android/camera/util/layout/NaturalOrientation;

    if-ne v2, v1, :cond_1

    .line 2718
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget v2, v2, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->navigationBarDimension:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 288
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->isMultiWindow:Z

    if-eqz v0, :cond_7

    .line 290
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->windowWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->windowHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-object v3, v3, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    .line 293
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-direct {v0, v6, v6, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    .line 296
    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->isTablet:Z

    if-eqz v0, :cond_8

    .line 304
    invoke-virtual {v2}, Lcom/android/camera/util/layout/NaturalOrientation;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    move v2, v1

    move v3, v1

    .line 320
    :goto_1
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v2, v2

    iget v5, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->windowWidth:I

    sub-int v0, v5, v0

    .line 323
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->windowHeight:I

    sub-int v3, v5, v3

    .line 324
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v4, v2, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v4

    .line 320
    goto/16 :goto_0

    .line 307
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-object v0, v0, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    move v2, v1

    move v3, v0

    move v0, v1

    .line 308
    goto :goto_1

    .line 311
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-object v0, v0, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    .line 312
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getNavigationBarDimension()I

    move-result v2

    move v3, v2

    move v2, v0

    move v0, v1

    .line 313
    goto :goto_1

    .line 316
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-object v0, v0, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    .line 317
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getNavigationBarDimension()I

    move-result v2

    move v3, v2

    move v2, v1

    goto :goto_1

    .line 330
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-boolean v0, v0, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarOverlay:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getNavigationBarDimension()I

    .line 332
    :cond_9
    sget-object v0, Lcom/android/camera/util/layout/NaturalOrientation;->PORTRAIT:Lcom/android/camera/util/layout/NaturalOrientation;

    if-eq v2, v0, :cond_a

    sget-object v0, Lcom/android/camera/util/layout/NaturalOrientation;->PORTRAIT_REVERSED:Lcom/android/camera/util/layout/NaturalOrientation;

    if-ne v2, v0, :cond_b

    .line 334
    :cond_a
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-object v1, v1, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-object v2, v2, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-object v3, v3, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-object v4, v4, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/16 :goto_0

    .line 339
    :cond_b
    sget-object v0, Lcom/android/camera/util/layout/NaturalOrientation;->LANDSCAPE:Lcom/android/camera/util/layout/NaturalOrientation;

    if-ne v2, v0, :cond_c

    .line 340
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-object v1, v1, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-object v2, v2, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-object v3, v3, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-object v4, v4, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/16 :goto_0

    .line 347
    :cond_c
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-object v1, v1, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-object v2, v2, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-object v3, v3, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-object v4, v4, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/16 :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static round(Landroid/graphics/RectF;)V
    .locals 4

    .prologue
    .line 621
    if-nez p0, :cond_0

    .line 629
    :goto_0
    return-void

    .line 624
    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 625
    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 626
    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    .line 627
    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    .line 628
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method private final updatePositionConfiguration()V
    .locals 15

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    const/4 v13, 0x0

    .line 188
    iget v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->windowWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->windowHeight:I

    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->isMultiWindow:Z

    if-eqz v0, :cond_2

    .line 192
    iget v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->windowWidth:I

    iget v3, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->windowHeight:I

    .line 1422
    sget-object v4, Lcom/android/camera/ui/CaptureLayoutHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x4a

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "getMultiWindowPositionConfiguration(width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    new-instance v4, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    invoke-direct {v4}, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;-><init>()V

    .line 1426
    iput-boolean v1, v4, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarOverlay:Z

    .line 1427
    iget-object v1, v4, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    int-to-float v5, v0

    int-to-float v6, v3

    invoke-virtual {v1, v13, v13, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1428
    iget-object v1, v4, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->bottomBarMultiwindowHeight:I

    sub-int v5, v3, v5

    int-to-float v5, v5

    int-to-float v0, v0

    int-to-float v3, v3

    invoke-virtual {v1, v13, v5, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1429
    iput-boolean v2, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->isReverse:Z

    .line 192
    iput-object v4, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    goto :goto_0

    .line 194
    :cond_2
    iget v5, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->windowWidth:I

    iget v6, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->windowHeight:I

    iget v4, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->aspectRatio:F

    .line 1448
    sget-object v0, Lcom/android/camera/ui/CaptureLayoutHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v7, 0x63

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "getPositionConfiguration(width="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", height="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", previewAspectRatio="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    if-le v5, v6, :cond_3

    move v0, v1

    .line 1461
    :goto_1
    new-instance v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    invoke-direct {v7}, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;-><init>()V

    .line 1699
    iget-object v3, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->activityWindow:Landroid/view/Window;

    if-eqz v3, :cond_4

    .line 1702
    iget-object v3, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->activityWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    .line 1703
    and-int/lit16 v3, v3, 0x200

    const/16 v8, 0x200

    if-ne v3, v8, :cond_4

    move v3, v1

    .line 1667
    :goto_2
    if-eqz v3, :cond_8

    .line 2684
    iget-boolean v3, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->isTablet:Z

    if-nez v3, :cond_5

    move v3, v1

    .line 2685
    :goto_3
    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    .line 2686
    iget-object v3, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->resources:Landroid/content/res/Resources;

    const-string v8, "navigation_bar_width"

    const-string v9, "dimen"

    const-string v10, "android"

    invoke-virtual {v3, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2692
    :goto_4
    if-lez v3, :cond_14

    .line 2693
    iget-object v8, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->resources:Landroid/content/res/Resources;

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1462
    :goto_5
    iput v3, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->navigationBarDimension:I

    .line 1465
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1466
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1469
    int-to-float v3, v8

    int-to-float v10, v9

    const v11, 0x3faaaaab

    mul-float/2addr v10, v11

    sub-float/2addr v3, v10

    .line 1470
    iget v10, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->bottomBarMinHeight:I

    int-to-float v10, v10

    invoke-static {v10, v3}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 1472
    cmpl-float v3, v4, v13

    if-nez v3, :cond_a

    .line 1473
    iget-object v3, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    int-to-float v4, v5

    int-to-float v8, v6

    invoke-virtual {v3, v13, v13, v4, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1474
    iput-boolean v1, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarOverlay:Z

    .line 1475
    if-eqz v0, :cond_9

    .line 1476
    iget-object v3, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    int-to-float v4, v5

    sub-float/2addr v4, v10

    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {v3, v4, v13, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1587
    :goto_6
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getNaturalPortraitUIOrientation()Lcom/android/camera/util/layout/NaturalOrientation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->lastOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

    .line 1588
    sget-object v3, Lcom/android/camera/ui/CaptureLayoutHelper;->TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->lastOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "UI orientation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    iget-object v3, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->lastOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

    sget-object v4, Lcom/android/camera/util/layout/NaturalOrientation;->LANDSCAPE:Lcom/android/camera/util/layout/NaturalOrientation;

    if-ne v3, v4, :cond_12

    if-eqz v0, :cond_12

    .line 1590
    iput-boolean v1, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->isReverse:Z

    .line 1592
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1593
    const/high16 v1, 0x43340000    # 180.0f

    div-int/lit8 v2, v5, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v6, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1595
    iget-object v1, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1596
    iget-object v1, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1602
    :goto_7
    iget-object v0, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->round(Landroid/graphics/RectF;)V

    .line 1603
    iget-object v0, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->round(Landroid/graphics/RectF;)V

    .line 1605
    sget-object v0, Lcom/android/camera/ui/CaptureLayoutHelper;->TAG:Ljava/lang/String;

    iget-boolean v1, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarOverlay:Z

    iget-object v2, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x60

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "getPositionConfiguration returns config.[mBottomBarOverlay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mBottomBarRect="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPreviewRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iput-object v7, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 1457
    goto/16 :goto_1

    :cond_4
    move v3, v2

    .line 1703
    goto/16 :goto_2

    :cond_5
    move v3, v2

    .line 2684
    goto/16 :goto_3

    .line 2687
    :cond_6
    if-nez v3, :cond_7

    if-eqz v0, :cond_7

    .line 2688
    iget-object v3, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->resources:Landroid/content/res/Resources;

    const-string v8, "navigation_bar_height_landscape"

    const-string v9, "dimen"

    const-string v10, "android"

    invoke-virtual {v3, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_4

    .line 2690
    :cond_7
    iget-object v3, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->resources:Landroid/content/res/Resources;

    const-string v8, "navigation_bar_height"

    const-string v9, "dimen"

    const-string v10, "android"

    invoke-virtual {v3, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_4

    :cond_8
    move v3, v2

    .line 1670
    goto/16 :goto_5

    .line 1478
    :cond_9
    iget-object v3, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    int-to-float v4, v6

    sub-float/2addr v4, v10

    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {v3, v13, v4, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_6

    .line 1481
    :cond_a
    cmpg-float v3, v4, v12

    if-gez v3, :cond_13

    .line 1482
    div-float v3, v12, v4

    .line 1486
    :goto_8
    int-to-float v4, v9

    mul-float/2addr v4, v3

    .line 1487
    int-to-float v11, v8

    sub-float v4, v11, v4

    .line 1491
    cmpg-float v11, v4, v13

    if-gtz v11, :cond_c

    .line 1493
    int-to-float v4, v8

    .line 1494
    int-to-float v8, v8

    div-float v3, v8, v3

    .line 1495
    iput-boolean v1, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarOverlay:Z

    .line 1497
    if-eqz v0, :cond_b

    .line 1498
    iget-object v8, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    div-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    div-float v11, v3, v14

    sub-float/2addr v9, v11

    div-int/lit8 v11, v6, 0x2

    int-to-float v11, v11

    div-float v12, v3, v14

    add-float/2addr v11, v12

    invoke-virtual {v8, v13, v9, v4, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1503
    iget-object v4, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    int-to-float v8, v5

    sub-float/2addr v8, v10

    div-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    div-float v10, v3, v14

    sub-float/2addr v9, v10

    int-to-float v10, v5

    div-int/lit8 v11, v6, 0x2

    int-to-float v11, v11

    div-float/2addr v3, v14

    add-float/2addr v3, v11

    invoke-virtual {v4, v8, v9, v10, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_6

    .line 1509
    :cond_b
    iget-object v8, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    div-int/lit8 v9, v5, 0x2

    int-to-float v9, v9

    div-float v11, v3, v14

    sub-float/2addr v9, v11

    div-int/lit8 v11, v5, 0x2

    int-to-float v11, v11

    div-float v12, v3, v14

    add-float/2addr v11, v12

    invoke-virtual {v8, v9, v13, v11, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1514
    iget-object v4, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    div-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    div-float v9, v3, v14

    sub-float/2addr v8, v9

    int-to-float v9, v6

    sub-float/2addr v9, v10

    div-int/lit8 v10, v5, 0x2

    int-to-float v10, v10

    div-float/2addr v3, v14

    add-float/2addr v3, v10

    int-to-float v10, v6

    invoke-virtual {v4, v8, v9, v3, v10}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_6

    .line 1520
    :cond_c
    const v11, 0x3fc71c72

    cmpl-float v11, v3, v11

    if-lez v11, :cond_e

    .line 1524
    int-to-float v4, v9

    .line 1525
    int-to-float v8, v9

    mul-float/2addr v3, v8

    .line 1526
    iput-boolean v1, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarOverlay:Z

    .line 1527
    if-eqz v0, :cond_d

    .line 1528
    int-to-float v8, v5

    .line 1529
    sub-float v3, v8, v3

    .line 1530
    iget-object v9, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    invoke-virtual {v9, v3, v13, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1531
    iget-object v3, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    int-to-float v4, v5

    sub-float/2addr v4, v10

    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {v3, v4, v13, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_6

    .line 1533
    :cond_d
    int-to-float v8, v6

    .line 1534
    sub-float v3, v8, v3

    .line 1535
    iget-object v9, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    invoke-virtual {v9, v13, v3, v4, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1536
    iget-object v3, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    int-to-float v4, v6

    sub-float/2addr v4, v10

    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {v3, v13, v4, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_6

    .line 1538
    :cond_e
    iget v10, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->bottomBarMinHeight:I

    int-to-float v10, v10

    cmpg-float v4, v4, v10

    if-gtz v4, :cond_10

    .line 1540
    iget v4, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->bottomBarMinHeight:I

    sub-int v4, v8, v4

    int-to-float v4, v4

    .line 1541
    div-float v3, v4, v3

    .line 1542
    iget v8, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->bottomBarMinHeight:I

    int-to-float v8, v8

    .line 1543
    iput-boolean v2, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarOverlay:Z

    .line 1544
    if-eqz v0, :cond_f

    .line 1545
    iget-object v9, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    div-int/lit8 v10, v6, 0x2

    int-to-float v10, v10

    div-float v11, v3, v14

    sub-float/2addr v10, v11

    div-int/lit8 v11, v6, 0x2

    int-to-float v11, v11

    div-float v12, v3, v14

    add-float/2addr v11, v12

    invoke-virtual {v9, v13, v10, v4, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1550
    iget-object v4, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    int-to-float v9, v5

    sub-float v8, v9, v8

    div-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    div-float v10, v3, v14

    sub-float/2addr v9, v10

    int-to-float v10, v5

    div-int/lit8 v11, v6, 0x2

    int-to-float v11, v11

    div-float/2addr v3, v14

    add-float/2addr v3, v11

    invoke-virtual {v4, v8, v9, v10, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_6

    .line 1556
    :cond_f
    iget-object v9, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    div-int/lit8 v10, v5, 0x2

    int-to-float v10, v10

    div-float v11, v3, v14

    sub-float/2addr v10, v11

    div-int/lit8 v11, v5, 0x2

    int-to-float v11, v11

    div-float v12, v3, v14

    add-float/2addr v11, v12

    invoke-virtual {v9, v10, v13, v11, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1561
    iget-object v4, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    div-int/lit8 v9, v5, 0x2

    int-to-float v9, v9

    div-float v10, v3, v14

    sub-float/2addr v9, v10

    int-to-float v10, v6

    sub-float v8, v10, v8

    div-int/lit8 v10, v5, 0x2

    int-to-float v10, v10

    div-float/2addr v3, v14

    add-float/2addr v3, v10

    int-to-float v10, v6

    invoke-virtual {v4, v9, v8, v3, v10}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_6

    .line 1569
    :cond_10
    int-to-float v4, v9

    .line 1570
    int-to-float v9, v9

    mul-float/2addr v3, v9

    .line 1571
    float-to-int v9, v3

    sub-int/2addr v8, v9

    .line 1572
    iput-boolean v2, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarOverlay:Z

    .line 1573
    if-eqz v0, :cond_11

    .line 1574
    sub-int v9, v5, v8

    int-to-float v9, v9

    .line 1575
    sub-float v3, v9, v3

    .line 1576
    iget-object v10, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v3, v13, v9, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1577
    iget-object v3, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    sub-int v4, v5, v8

    int-to-float v4, v4

    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {v3, v4, v13, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_6

    .line 1579
    :cond_11
    sub-int v9, v6, v8

    int-to-float v9, v9

    .line 1580
    sub-float v3, v9, v3

    .line 1581
    iget-object v10, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v13, v3, v4, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1582
    iget-object v3, v7, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarRect:Landroid/graphics/RectF;

    sub-int v4, v6, v8

    int-to-float v4, v4

    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {v3, v13, v4, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_6

    .line 1598
    :cond_12
    iput-boolean v2, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->isReverse:Z

    goto/16 :goto_7

    :cond_13
    move v3, v4

    goto/16 :goto_8

    :cond_14
    move v3, v2

    goto/16 :goto_5
.end method


# virtual methods
.method public final getCaptureLayoutResult()Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 356
    iget-object v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "CaptureLayoutHelper#getCaptureLayoutResult"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 357
    new-instance v0, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;

    .line 359
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getBottomBarRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 3632
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getBottomBarRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 3633
    iget-boolean v2, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->isTablet:Z

    if-eqz v2, :cond_2

    .line 3636
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 3639
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v4, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->tabletBottomBarContentSize:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v5

    float-to-int v4, v2

    .line 3640
    new-instance v2, Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    int-to-float v6, v4

    add-float/2addr v5, v6

    iget v6, v3, Landroid/graphics/RectF;->top:F

    iget v7, v3, Landroid/graphics/RectF;->right:F

    int-to-float v4, v4

    sub-float v4, v7, v4

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v5, v6, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 361
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getFullscreenRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 362
    invoke-virtual {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v4

    .line 363
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getUncoveredPreviewRect()Landroid/graphics/RectF;

    move-result-object v5

    .line 364
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getPhotoVideoPaginatorRect()Landroid/graphics/RectF;

    move-result-object v6

    .line 3752
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getUncoveredPreviewRect()Landroid/graphics/RectF;

    move-result-object v9

    .line 3753
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getPhotoVideoPaginatorRect()Landroid/graphics/RectF;

    move-result-object v7

    .line 3756
    invoke-virtual {v9, v7}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3758
    iget v7, v7, Landroid/graphics/RectF;->top:F

    move v8, v7

    .line 3763
    :goto_1
    new-instance v7, Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->left:F

    .line 3764
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->burstChipHeight:I

    int-to-float v11, v11

    sub-float v11, v8, v11

    .line 3765
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v11, v11

    iget v9, v9, Landroid/graphics/RectF;->right:F

    .line 3766
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    .line 3767
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v7, v10, v11, v9, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 366
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getNavigationBarDimension()I

    move-result v8

    .line 4409
    iget-boolean v9, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->isReverse:Z

    .line 5379
    iget-object v10, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    if-nez v10, :cond_0

    .line 5380
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->updatePositionConfiguration()V

    .line 5383
    :cond_0
    iget-object v10, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    if-nez v10, :cond_4

    .line 5384
    sget-object v10, Lcom/android/camera/ui/CaptureLayoutHelper;->TAG:Ljava/lang/String;

    const-string v11, "Timing issue.   Queried before object is ready."

    invoke-static {v10, v11}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v12

    .line 368
    :goto_2
    iget-boolean v11, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->isTablet:Z

    invoke-direct/range {v0 .. v12}, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;IZZZB)V

    .line 370
    iget-object v1, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 371
    return-object v0

    .line 3648
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v4, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->tabletBottomBarContentSize:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v5

    float-to-int v4, v2

    .line 3649
    new-instance v2, Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget v6, v3, Landroid/graphics/RectF;->top:F

    int-to-float v7, v4

    add-float/2addr v6, v7

    iget v7, v3, Landroid/graphics/RectF;->right:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-direct {v2, v5, v6, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_2
    move-object v2, v3

    .line 3656
    goto/16 :goto_0

    .line 3761
    :cond_3
    iget v7, v9, Landroid/graphics/RectF;->bottom:F

    iget v8, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->burstChipBottomPadding:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    move v8, v7

    goto :goto_1

    .line 5387
    :cond_4
    iget-object v10, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-boolean v10, v10, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->bottomBarOverlay:Z

    goto :goto_2
.end method

.method public final getFullscreenRect()Landroid/graphics/RectF;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 259
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->windowWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->windowHeight:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final getPreviewRect()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    if-nez v0, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->updatePositionConfiguration()V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    if-nez v0, :cond_1

    .line 247
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 249
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->positionConfiguration:Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;

    iget-object v1, v1, Lcom/android/camera/ui/CaptureLayoutHelper$PositionConfiguration;->previewRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public final isMultiWindow()Z
    .locals 1

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->checkMultiWindow()V

    .line 418
    iget-boolean v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->isMultiWindow:Z

    return v0
.end method

.method public final onNonDecorWindowSizeChanged(II)V
    .locals 2

    .prologue
    .line 392
    iget v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->windowWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->windowHeight:I

    if-ne v0, p2, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getNaturalPortraitUIOrientation()Lcom/android/camera/util/layout/NaturalOrientation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->lastOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

    if-ne v0, v1, :cond_0

    .line 401
    :goto_0
    return-void

    .line 397
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->windowWidth:I

    .line 398
    iput p2, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->windowHeight:I

    .line 399
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->checkMultiWindow()V

    .line 400
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->updatePositionConfiguration()V

    goto :goto_0
.end method

.method public final onPreviewAspectRatioChanged(F)V
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->aspectRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->aspectRatio:F

    .line 166
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureLayoutHelper;->updatePositionConfiguration()V

    goto :goto_0
.end method

.method public final setShowBottomBar(Z)V
    .locals 2

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->showBottomBar:Z

    .line 178
    if-nez p1, :cond_0

    .line 179
    iget v0, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->windowWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/CaptureLayoutHelper;->windowHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->onPreviewAspectRatioChanged(F)V

    .line 181
    :cond_0
    return-void
.end method
