.class public Lcom/android/camera/ui/CameraAppUI$CameraModuleScreenShotProvider;
.super Ljava/lang/Object;
.source "CameraAppUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraModuleScreenShotProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CameraAppUI;)V
    .locals 0

    .prologue
    .line 2546
    iput-object p1, p0, Lcom/android/camera/ui/CameraAppUI$CameraModuleScreenShotProvider;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreviewOverlayAndControls()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 2559
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI$CameraModuleScreenShotProvider;->this$0:Lcom/android/camera/ui/CameraAppUI;

    .line 2561
    invoke-static {v0}, Lcom/android/camera/ui/CameraAppUI;->access$400(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/MainActivityLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/MainActivityLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$CameraModuleScreenShotProvider;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/ui/CameraAppUI;->access$400(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/MainActivityLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/MainActivityLayout;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2560
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2562
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2563
    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI$CameraModuleScreenShotProvider;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v2}, Lcom/android/camera/ui/CameraAppUI;->access$400(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/MainActivityLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/MainActivityLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2564
    return-object v0
.end method

.method public getScreenShot(I)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1569
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI$CameraModuleScreenShotProvider;->this$0:Lcom/android/camera/ui/CameraAppUI;

    .line 1571
    invoke-static {v0}, Lcom/android/camera/ui/CameraAppUI;->access$200(Lcom/android/camera/ui/CameraAppUI;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$CameraModuleScreenShotProvider;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/ui/CameraAppUI;->access$200(Lcom/android/camera/ui/CameraAppUI;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1570
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1572
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1573
    const/16 v2, 0xff

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1574
    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI$CameraModuleScreenShotProvider;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v2}, Lcom/android/camera/ui/CameraAppUI;->access$300(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/PreviewContentAdapter;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/camera/ui/PreviewContentAdapter;->getPreviewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1575
    if-eqz v2, :cond_0

    .line 1576
    iget-object v3, p0, Lcom/android/camera/ui/CameraAppUI$CameraModuleScreenShotProvider;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v3}, Lcom/android/camera/ui/CameraAppUI;->access$300(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/PreviewContentAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/ui/PreviewContentAdapter;->getPreviewArea()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1578
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraAppUI$CameraModuleScreenShotProvider;->getPreviewOverlayAndControls()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1579
    if-eqz v2, :cond_1

    .line 1580
    invoke-virtual {v1, v2, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1582
    :cond_1
    return-object v0
.end method
