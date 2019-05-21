.class public Lcom/android/camera/ui/snackbar/Snackbar;
.super Landroid/widget/LinearLayout;
.source "Snackbar.java"

# interfaces
.implements Lcom/android/camera/ui/animation/Hidable;


# instance fields
.field private final action:Landroid/widget/TextView;

.field private final choreographer:Lcom/android/camera/ui/animation/HidableChoreographer;

.field private final message:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/snackbar/Snackbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f01015a

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/snackbar/Snackbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Lcom/android/camera/ui/animation/HidableChoreographer;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/animation/HidableChoreographer;-><init>(Lcom/android/camera/ui/animation/Hidable;)V

    iput-object v0, p0, Lcom/android/camera/ui/snackbar/Snackbar;->choreographer:Lcom/android/camera/ui/animation/HidableChoreographer;

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040071

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    const v0, 0x7f11016a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/snackbar/Snackbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/snackbar/Snackbar;->message:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f1100e9

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/snackbar/Snackbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/snackbar/Snackbar;->action:Landroid/widget/TextView;

    .line 54
    sget-object v0, Lcom/android/camera2/R$styleable;->Snackbar:[I

    const v1, 0x7f0e01a7

    .line 55
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    sget v1, Lcom/android/camera2/R$styleable;->Snackbar_messageTextColor:I

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 59
    sget v2, Lcom/android/camera2/R$styleable;->Snackbar_actionTextColor:I

    .line 60
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/snackbar/Snackbar;->setOrientation(I)V

    .line 66
    const-string v0, "Need a valid text color for Snackbar instances"

    invoke-static {v1, v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v0, "Need a valid action text color for Snackbar instances"

    invoke-static {v2, v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    iget-object v0, p0, Lcom/android/camera/ui/snackbar/Snackbar;->message:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1095
    iget-object v0, p0, Lcom/android/camera/ui/snackbar/Snackbar;->action:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 71
    return-void
.end method
