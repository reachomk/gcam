.class public final Lcom/android/camera/ui/toyboxmenu/ToyboxMenuItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "ToyboxMenuItemAdapter.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final menuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/CameraMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/one/OneCameraManager;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuItemAdapter;->context:Landroid/content/Context;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuItemAdapter;->menuItems:Ljava/util/List;

    .line 32
    invoke-interface {p2}, Lcom/android/camera/one/OneCameraManager;->isHfrSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuItemAdapter;->menuItems:Ljava/util/List;

    sget-object v1, Lcom/android/camera/util/CameraMode;->VIDEO_HFR:Lcom/android/camera/util/CameraMode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuItemAdapter;->menuItems:Ljava/util/List;

    sget-object v1, Lcom/android/camera/util/CameraMode;->PANORAMA:Lcom/android/camera/util/CameraMode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuItemAdapter;->menuItems:Ljava/util/List;

    sget-object v1, Lcom/android/camera/util/CameraMode;->PHOTOSPHERE:Lcom/android/camera/util/CameraMode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuItemAdapter;->menuItems:Ljava/util/List;

    sget-object v1, Lcom/android/camera/util/CameraMode;->REFOCUS:Lcom/android/camera/util/CameraMode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuItemAdapter;->menuItems:Ljava/util/List;

    sget-object v1, Lcom/android/camera/util/CameraMode;->SETTINGS:Lcom/android/camera/util/CameraMode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuItemAdapter;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuItemAdapter;->menuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 43
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuItemAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    const v1, 0x7f040079

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/CameraMode;

    .line 61
    iget-object v1, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 62
    const v1, 0x7f11017e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    invoke-virtual {v0, v2}, Lcom/android/camera/util/CameraMode;->getTitle(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v0, v2}, Lcom/android/camera/util/CameraMode;->getDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 65
    const v1, 0x7f11017d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 66
    invoke-virtual {v0, v2}, Lcom/android/camera/util/CameraMode;->getIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    return-object p2
.end method
