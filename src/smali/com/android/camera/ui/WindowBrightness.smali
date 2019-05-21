.class public Lcom/android/camera/ui/WindowBrightness;
.super Ljava/lang/Object;
.source "WindowBrightness.java"


# instance fields
.field private final window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 1

    .prologue
    .line 2014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2015
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    iput-object v0, p0, Lcom/android/camera/ui/WindowBrightness;->window:Landroid/view/Window;

    .line 2016
    return-void
.end method

.method private setWindowBrightness(F)V
    .locals 2

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/android/camera/ui/WindowBrightness;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2030
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2031
    iget-object v1, p0, Lcom/android/camera/ui/WindowBrightness;->window:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2032
    return-void
.end method


# virtual methods
.method public clearBrightnessOverride()V
    .locals 1

    .prologue
    .line 1025
    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, v0}, Lcom/android/camera/ui/WindowBrightness;->setWindowBrightness(F)V

    .line 1026
    return-void
.end method

.method public setMaxBrightness()V
    .locals 1

    .prologue
    .line 1020
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/camera/ui/WindowBrightness;->setWindowBrightness(F)V

    .line 1021
    return-void
.end method
