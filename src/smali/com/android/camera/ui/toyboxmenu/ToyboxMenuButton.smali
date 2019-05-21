.class public Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;
.super Landroid/widget/ImageView;
.source "ToyboxMenuButton.java"


# instance fields
.field private buttonDrawable$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGRLEDQ6URAJD1GM8RRN8HP62TR5E90N4SJFET274OBNC5H6OP9R:Lcom/android/camera/ui/ShadowDrawerArrowDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 26
    new-instance v0, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;->buttonDrawable$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGRLEDQ6URAJD1GM8RRN8HP62TR5E90N4SJFET274OBNC5H6OP9R:Lcom/android/camera/ui/ShadowDrawerArrowDrawable;

    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;->buttonDrawable$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGRLEDQ6URAJD1GM8RRN8HP62TR5E90N4SJFET274OBNC5H6OP9R:Lcom/android/camera/ui/ShadowDrawerArrowDrawable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final setProgress(F)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;->buttonDrawable$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGRLEDQ6URAJD1GM8RRN8HP62TR5E90N4SJFET274OBNC5H6OP9R:Lcom/android/camera/ui/ShadowDrawerArrowDrawable;

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;->buttonDrawable$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGRLEDQ6URAJD1GM8RRN8HP62TR5E90N4SJFET274OBNC5H6OP9R:Lcom/android/camera/ui/ShadowDrawerArrowDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->setVerticalMirror(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0227

    invoke-static {p0, v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->setAndAnnounceNewButtonDescription(Landroid/view/View;Landroid/content/res/Resources;I)V

    .line 79
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;->buttonDrawable$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGRLEDQ6URAJD1GM8RRN8HP62TR5E90N4SJFET274OBNC5H6OP9R:Lcom/android/camera/ui/ShadowDrawerArrowDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->setProgress(F)V

    goto :goto_0

    .line 74
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;->buttonDrawable$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGRLEDQ6URAJD1GM8RRN8HP62TR5E90N4SJFET274OBNC5H6OP9R:Lcom/android/camera/ui/ShadowDrawerArrowDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShadowDrawerArrowDrawable;->setVerticalMirror(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/android/camera/ui/toyboxmenu/ToyboxMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0228

    invoke-static {p0, v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->setAndAnnounceNewButtonDescription(Landroid/view/View;Landroid/content/res/Resources;I)V

    goto :goto_1
.end method
