.class public final Lcom/android/camera/filmstrip/FilmstripDeleteController;
.super Ljava/lang/Object;
.source "FilmstripDeleteController.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;
.implements Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$DispatchTouchEvent;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnStop;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

.field private pendingDeletion:Z

.field private final resources:Landroid/content/res/Resources;

.field private final undoDeletionBar:Landroid/view/ViewGroup;

.field private final undoDeletionButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "FilmstripDeleteController"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;Landroid/content/res/Resources;Lcom/android/camera/filmstrip/FilmstripDataAdapter;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->pendingDeletion:Z

    .line 51
    iget-object v0, p1, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripUndoDeletionBar:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->undoDeletionBar:Landroid/view/ViewGroup;

    .line 52
    iget-object v0, p1, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripUndoDeleteButton:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->undoDeletionButton:Landroid/view/View;

    .line 53
    iput-object p2, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->resources:Landroid/content/res/Resources;

    .line 54
    iput-object p3, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    .line 58
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->undoDeletionBar:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/filmstrip/FilmstripDeleteController;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->undoDeletionBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/filmstrip/FilmstripDeleteController;Z)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/filmstrip/FilmstripDeleteController;->onUndoDelete(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/filmstrip/FilmstripDeleteController;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->resources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/filmstrip/FilmstripDeleteController;)Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->undoDeletionButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/filmstrip/FilmstripDeleteController;Z)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/filmstrip/FilmstripDeleteController;->hideUndoDeletionBar(Z)V

    return-void
.end method

.method private final hideUndoDeletionBar(Z)V
    .locals 4

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->undoDeletionBar:Landroid/view/ViewGroup;

    .line 83
    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 84
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/camera/filmstrip/FilmstripDeleteController$1;

    invoke-direct {v1, p0}, Lcom/android/camera/filmstrip/FilmstripDeleteController$1;-><init>(Lcom/android/camera/filmstrip/FilmstripDeleteController;)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->undoDeletionBar:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private final onUndoDelete(Z)V
    .locals 1

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->undoDeletion()Z

    .line 162
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->pendingDeletion:Z

    .line 163
    return-void

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/filmstrip/FilmstripDeleteController;->performDeletion()V

    goto :goto_0
.end method

.method private final performDeletion()V
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->pendingDeletion:Z

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->pendingDeletion:Z

    .line 171
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->executeDeletion()Z

    goto :goto_0
.end method


# virtual methods
.method public final dismissUntoDelete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->undoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0, v1}, Lcom/android/camera/filmstrip/FilmstripDeleteController;->hideUndoDeletionBar(Z)V

    .line 76
    invoke-direct {p0, v1}, Lcom/android/camera/filmstrip/FilmstripDeleteController;->onUndoDelete(Z)V

    .line 78
    :cond_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->undoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->undoDeletionButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 2119
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v4, v0, v0, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2120
    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getAbsoluteLeft(Landroid/view/View;)I

    move-result v5

    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getAbsoluteTop(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2121
    float-to-int v1, v2

    float-to-int v2, v3

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 107
    if-eqz v1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->undoDeletionButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-direct {p0, v0}, Lcom/android/camera/filmstrip/FilmstripDeleteController;->onUndoDelete(Z)V

    .line 111
    invoke-direct {p0, v0}, Lcom/android/camera/filmstrip/FilmstripDeleteController;->hideUndoDeletionBar(Z)V

    goto :goto_0
.end method

.method public final onStop()V
    .locals 2

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/camera/filmstrip/FilmstripDeleteController;->performDeletion()V

    .line 182
    sget-object v0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->TAG:Ljava/lang/String;

    const-string v1, "performDeletion"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public final showUndoDeletion()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 62
    iget-boolean v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->pendingDeletion:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/android/camera/filmstrip/FilmstripDeleteController;->performDeletion()V

    .line 65
    :cond_0
    sget-object v0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->TAG:Ljava/lang/String;

    const-string v1, "Showing undo deletion bar"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iput-boolean v2, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->pendingDeletion:Z

    .line 1130
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->undoDeletionButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/filmstrip/FilmstripDeleteController$2;

    invoke-direct {v1, p0}, Lcom/android/camera/filmstrip/FilmstripDeleteController$2;-><init>(Lcom/android/camera/filmstrip/FilmstripDeleteController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1145
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->undoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 1146
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->undoDeletionBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1147
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->undoDeletionBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1148
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripDeleteController;->undoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 68
    return-void
.end method
