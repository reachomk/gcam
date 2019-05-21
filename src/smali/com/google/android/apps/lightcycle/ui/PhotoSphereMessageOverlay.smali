.class public Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;
.super Landroid/widget/FrameLayout;
.source "PhotoSphereMessageOverlay.java"


# static fields
.field public static final MSG_HIT_TARGET_TO_START:I

.field public static final MSG_TAP_TO_START:I

.field public static final MSG_TOO_FAST:I


# instance fields
.field private final ALL_VIEW_IDS:[I

.field private final handler:Landroid/os/Handler;

.field private rotateDeviceIconCw:Z

.field private rotateDeviceIconShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const v0, 0x7f0a0249

    sput v0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->MSG_HIT_TARGET_TO_START:I

    .line 20
    const v0, 0x7f0a024a

    sput v0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->MSG_TAP_TO_START:I

    .line 21
    const v0, 0x7f0a0248

    sput v0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->MSG_TOO_FAST:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->handler:Landroid/os/Handler;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->rotateDeviceIconShown:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->rotateDeviceIconCw:Z

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->ALL_VIEW_IDS:[I

    .line 42
    return-void

    .line 33
    nop

    :array_0
    .array-data 4
        0x7f110147
        0x7f110148
        0x7f110149
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->handler:Landroid/os/Handler;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->rotateDeviceIconShown:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->rotateDeviceIconCw:Z

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->ALL_VIEW_IDS:[I

    .line 38
    return-void

    .line 33
    nop

    :array_0
    .array-data 4
        0x7f110147
        0x7f110148
        0x7f110149
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->rotateDeviceIconCw:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->rotateDeviceIconCw:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->rotateDeviceIconShown:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->rotateDeviceIconShown:Z

    return p1
.end method


# virtual methods
.method public final hideRotateDeviceIcon()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$6;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$6;-><init>(Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void
.end method

.method public final hideShortMessage()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$2;-><init>(Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 197
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 201
    const v0, 0x7f110147

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 205
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c004a

    .line 206
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 207
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c004b

    .line 208
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 209
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c004c

    .line 210
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 211
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 212
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 213
    invoke-virtual {v0, v6, v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 214
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 215
    return-void
.end method

.method public final setScreenOrientation(I)V
    .locals 5

    .prologue
    .line 107
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->ALL_VIEW_IDS:[I

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget v0, v3, v2

    .line 108
    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    const/16 v1, 0xb4

    if-ne p1, v1, :cond_0

    const/16 v1, 0x50

    :goto_1
    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 107
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 109
    :cond_0
    const/16 v1, 0x30

    goto :goto_1

    .line 111
    :cond_1
    return-void
.end method

.method public final showRotateDeviceIcon(Z)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$5;-><init>(Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void
.end method

.method public final showShortMessage(I)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$1;-><init>(Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method

.method public final showShortMessageWithTimeout(II)V
    .locals 6

    .prologue
    .line 77
    const v0, 0x7f110147

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$3;

    invoke-direct {v2, v0, p1}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$3;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$4;

    invoke-direct {v2, v0}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$4;-><init>(Landroid/widget/TextView;)V

    const-wide/16 v4, 0x2ee

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    return-void
.end method

.method public final updateCalibrationMessage(ZI)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$7;-><init>(Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    return-void
.end method
