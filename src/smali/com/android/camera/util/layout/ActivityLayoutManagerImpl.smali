.class final Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;
.super Ljava/lang/Object;
.source "ActivityLayoutManagerImpl.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;
.implements Lcom/android/camera/util/layout/ActivityLayoutManager;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnDestroy;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnStart;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnStop;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

.field private final globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final installListenerRunnable:Ljava/lang/Runnable;

.field private isActivityPaused:Z

.field private final layoutConfig$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIULB9A1P6US35E9Q7IEO_:Lcom/google/android/apps/camera/async/UiObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/UiObservable;"
        }
    .end annotation
.end field

.field private final logger:Lcom/android/camera/debug/Logger;

.field private final mainActivityLayout:Lcom/android/camera/ui/MainActivityLayout;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private numRetries:I

.field private final orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

.field private final rootView:Landroid/view/View;

.field private viewTreeObserver:Landroid/view/ViewTreeObserver;

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "ActivityLayout"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/Window;Lcom/android/camera/ui/MainActivityLayout;Lcom/android/camera/burst/OrientationLockController;Landroid/view/WindowManager;Lcom/google/android/apps/camera/async/BatchedUiExecutor;Lcom/android/camera/debug/Logger$Factory;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/error/FatalErrorHandler;)V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl$1;-><init>(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)V

    iput-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->installListenerRunnable:Ljava/lang/Runnable;

    .line 72
    new-instance v0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl$2;-><init>(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)V

    iput-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->numRetries:I

    .line 95
    iput-object p2, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->mainActivityLayout:Lcom/android/camera/ui/MainActivityLayout;

    .line 96
    iput-object p4, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->windowManager:Landroid/view/WindowManager;

    .line 97
    iput-object p3, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 99
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->rootView:Landroid/view/View;

    .line 100
    sget-object v0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->TAG:Ljava/lang/String;

    invoke-interface {p6, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->logger:Lcom/android/camera/debug/Logger;

    .line 102
    invoke-direct {p0}, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->computeActivityLayout()Lcom/android/camera/util/layout/ActivityLayout;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/google/android/apps/camera/async/UiObservables;->createFilteredUiProperty$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQ2C5Q66Q35CHAMIHBOCLHNAT3FE8TKOQJ1EPGIUR31DPJIUJR2D9IM6T1R55666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQLD5874RRGCLP78U9R(Lcom/google/android/apps/camera/async/BatchedUiExecutor;Ljava/lang/Object;)Lcom/google/android/apps/camera/async/UiObservable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->layoutConfig$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIULB9A1P6US35E9Q7IEO_:Lcom/google/android/apps/camera/async/UiObservable;

    .line 104
    iput-object p7, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 105
    iput-object p8, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    .line 107
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    iget-object v1, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->installListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 108
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "constructed ActivityLayoutManagerImpl"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)Lcom/android/camera/debug/Logger;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->logger:Lcom/android/camera/debug/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->installOnGlobalLayoutListener()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->numRetries:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;I)I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->numRetries:I

    return v0
.end method

.method static synthetic access$208(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)I
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->numRetries:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->numRetries:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->installListenerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)Lcom/google/android/apps/camera/async/MainThread;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)Lcom/android/camera/error/FatalErrorHandler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->updateCurrentLayout()V

    return-void
.end method

.method private final computeActivityLayout()Lcom/android/camera/util/layout/ActivityLayout;
    .locals 8

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "computeActivityLayout"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->uiOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v1

    .line 168
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->naturalUiOrientation()Lcom/android/camera/util/layout/NaturalOrientation;

    move-result-object v2

    .line 1193
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1194
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1195
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1196
    new-instance v3, Lcom/android/camera/util/Size;

    invoke-direct {v3, v4}, Lcom/android/camera/util/Size;-><init>(Landroid/graphics/Point;)V

    .line 172
    new-instance v4, Lcom/android/camera/util/Size;

    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v5, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->rootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v4, v0, v5}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 174
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->mainActivityLayout:Lcom/android/camera/ui/MainActivityLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/MainActivityLayout;->getCurrentRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    .line 176
    new-instance v6, Lcom/android/camera/util/Size;

    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->mainActivityLayout:Lcom/android/camera/ui/MainActivityLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/MainActivityLayout;->getWidth()I

    move-result v0

    iget-object v7, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->mainActivityLayout:Lcom/android/camera/ui/MainActivityLayout;

    invoke-virtual {v7}, Lcom/android/camera/ui/MainActivityLayout;->getHeight()I

    move-result v7

    invoke-direct {v6, v0, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 178
    new-instance v0, Lcom/android/camera/util/layout/ActivityLayout;

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/util/layout/ActivityLayout;-><init>(Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/android/camera/util/layout/NaturalOrientation;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Landroid/view/WindowInsets;Lcom/android/camera/util/Size;)V

    return-object v0
.end method

.method private final installOnGlobalLayoutListener()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 140
    iget-object v1, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->logger:Lcom/android/camera/debug/Logger;

    const-string v2, "installing OnGlobalLayoutListener"

    invoke-virtual {v1, v2}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 143
    iget-object v1, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 146
    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->logger:Lcom/android/camera/debug/Logger;

    const-string v2, "mViewTreeObserver null, cannot install listener"

    invoke-virtual {v1, v2}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V

    .line 161
    :goto_0
    return v0

    .line 149
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    iget-object v1, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->logger:Lcom/android/camera/debug/Logger;

    const-string v2, "mViewTreeObserver not alive, cannot install listener"

    invoke-virtual {v1, v2}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    iput-object v1, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->viewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 160
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "OnGlobalLayoutListener installed"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x1

    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    iget-object v2, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->logger:Lcom/android/camera/debug/Logger;

    const-string v3, "ViewTreeObserver is not alive, cannot install listener"

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private final updateCurrentLayout()V
    .locals 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->isActivityPaused:Z

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "updating layout config"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->computeActivityLayout()Lcom/android/camera/util/layout/ActivityLayout;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->layoutConfig$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIULB9A1P6US35E9Q7IEO_:Lcom/google/android/apps/camera/async/UiObservable;

    invoke-interface {v1, v0}, Lcom/google/android/apps/camera/async/UiObservable;->update(Ljava/lang/Object;)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "paused, skipping updateCurrentLayout"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final activityLayout()Lcom/google/android/apps/camera/async/UiObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->layoutConfig$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIULB9A1P6US35E9Q7IEO_:Lcom/google/android/apps/camera/async/UiObservable;

    return-object v0
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "onDestroy clearing listeners"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->viewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->viewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "onDestroy removeOnGlobalLayoutListener"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->viewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->viewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 137
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "onStart"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->isActivityPaused:Z

    .line 126
    invoke-direct {p0}, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->updateCurrentLayout()V

    .line 127
    return-void
.end method

.method public final onStop()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->logger:Lcom/android/camera/debug/Logger;

    const-string v1, "onStop"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->isActivityPaused:Z

    .line 120
    return-void
.end method
