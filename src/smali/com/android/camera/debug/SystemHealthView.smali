.class public final Lcom/android/camera/debug/SystemHealthView;
.super Landroid/widget/FrameLayout;
.source "SystemHealthView.java"

# interfaces
.implements Lcom/android/camera/debug/SystemHealth$CpuDataListener;


# static fields
.field private static sParent:Landroid/view/ViewGroup;

.field private static sSystemHealth:Lcom/android/camera/debug/SystemHealth;

.field private static sSystemHealthView:Landroid/view/View;


# instance fields
.field private final cpuFreq:[Lcom/android/camera/debug/ClockSpeedViewRenderer;

.field private dataLock:Ljava/lang/Object;

.field private final marginTopPixels:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/camera/debug/ClockSpeedViewRenderer;

    iput-object v0, p0, Lcom/android/camera/debug/SystemHealthView;->cpuFreq:[Lcom/android/camera/debug/ClockSpeedViewRenderer;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/debug/SystemHealthView;->dataLock:Ljava/lang/Object;

    .line 30
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x10000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 31
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/camera/debug/SystemHealthView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 33
    new-instance v0, Lcom/android/camera/debug/SystemHealth;

    invoke-direct {v0}, Lcom/android/camera/debug/SystemHealth;-><init>()V

    .line 34
    sput-object v0, Lcom/android/camera/debug/SystemHealthView;->sSystemHealth:Lcom/android/camera/debug/SystemHealth;

    invoke-virtual {v0, p0}, Lcom/android/camera/debug/SystemHealth;->setCpuDataListener(Lcom/android/camera/debug/SystemHealth$CpuDataListener;)V

    .line 36
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/debug/SystemHealthView;->cpuFreq:[Lcom/android/camera/debug/ClockSpeedViewRenderer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/android/camera/debug/SystemHealthView;->cpuFreq:[Lcom/android/camera/debug/ClockSpeedViewRenderer;

    new-instance v2, Lcom/android/camera/debug/ClockSpeedViewRenderer;

    invoke-direct {v2, p1, p0}, Lcom/android/camera/debug/ClockSpeedViewRenderer;-><init>(Landroid/content/Context;Landroid/view/View;)V

    aput-object v2, v1, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 42
    const/high16 v1, 0x42aa0000    # 85.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/debug/SystemHealthView;->marginTopPixels:I

    .line 43
    return-void
.end method

.method public static attach(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isOnScreenSystemHealthInfoEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    sput-object p0, Lcom/android/camera/debug/SystemHealthView;->sParent:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 55
    sget-object v0, Lcom/android/camera/debug/SystemHealthView;->sSystemHealthView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 56
    new-instance v0, Lcom/android/camera/debug/SystemHealthView;

    sget-object v1, Lcom/android/camera/debug/SystemHealthView;->sParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/debug/SystemHealthView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/camera/debug/SystemHealthView;->sSystemHealthView:Landroid/view/View;

    .line 58
    :cond_2
    sget-object v0, Lcom/android/camera/debug/SystemHealthView;->sSystemHealthView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/android/camera/debug/SystemHealthView;->sParent:Landroid/view/ViewGroup;

    sget-object v1, Lcom/android/camera/debug/SystemHealthView;->sSystemHealthView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    sget-object v0, Lcom/android/camera/debug/SystemHealthView;->sSystemHealth:Lcom/android/camera/debug/SystemHealth;

    invoke-virtual {v0}, Lcom/android/camera/debug/SystemHealth;->start()V

    goto :goto_0
.end method

.method public static detach()V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/android/camera/debug/SystemHealthView;->sParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/android/camera/debug/SystemHealthView;->sParent:Landroid/view/ViewGroup;

    sget-object v1, Lcom/android/camera/debug/SystemHealthView;->sSystemHealthView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 70
    sget-object v0, Lcom/android/camera/debug/SystemHealthView;->sSystemHealth:Lcom/android/camera/debug/SystemHealth;

    invoke-virtual {v0}, Lcom/android/camera/debug/SystemHealth;->stop()V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    iget-object v1, p0, Lcom/android/camera/debug/SystemHealthView;->dataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/debug/SystemHealthView;->cpuFreq:[Lcom/android/camera/debug/ClockSpeedViewRenderer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/camera/debug/ClockSpeedViewRenderer;->getSizePixels()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    .line 81
    :goto_0
    iget-object v3, p0, Lcom/android/camera/debug/SystemHealthView;->cpuFreq:[Lcom/android/camera/debug/ClockSpeedViewRenderer;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 82
    div-int/lit8 v3, v2, 0x2

    mul-int v4, v0, v2

    add-int/2addr v3, v4

    .line 83
    iget-object v4, p0, Lcom/android/camera/debug/SystemHealthView;->cpuFreq:[Lcom/android/camera/debug/ClockSpeedViewRenderer;

    aget-object v4, v4, v0

    iget v5, p0, Lcom/android/camera/debug/SystemHealthView;->marginTopPixels:I

    invoke-virtual {v4, p1, v3, v5}, Lcom/android/camera/debug/ClockSpeedViewRenderer;->onDraw(Landroid/graphics/Canvas;II)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onNewData([Lcom/android/camera/debug/SystemHealth$CpuData;)V
    .locals 4

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/camera/debug/SystemHealthView;->dataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/android/camera/debug/SystemHealthView;->cpuFreq:[Lcom/android/camera/debug/ClockSpeedViewRenderer;

    aget-object v2, v2, v0

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/android/camera/debug/ClockSpeedViewRenderer;->setClockSpeed(Lcom/android/camera/debug/SystemHealth$CpuData;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
