.class public final Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;
.super Ljava/lang/Object;
.source "PreviewSwipeGestureStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;,
        Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;,
        Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipePhotoState;,
        Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeUnknownState;,
        Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;,
        Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$Mode;
    }
.end annotation


# instance fields
.field private final callback:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;

.field private currentMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIURBFCHIN6TR9EHHMGBQGE9INCQB5ET9NEQBGCL3MASRKELP6AKRKC5Q6AJB1DPGMEPBI4H6MUP357C______:I

.field private currentState:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;

.field private swipeEnabled:Z

.field private transitionX:F

.field private velocityX:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "PrevSwipeGstMgr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->transitionX:F

    .line 44
    iput v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->velocityX:F

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->swipeEnabled:Z

    .line 250
    iput-object p1, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->callback:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;

    .line 251
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)F
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->velocityX:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;F)F
    .locals 0

    .prologue
    .line 10
    iput p1, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->velocityX:F

    return p1
.end method

.method static synthetic access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRDDTI6ASRND5Q66Q1FA1P6ATJ9CLRL6TR9E1IKEPBJEHQN4PAJEHGN8PADC5N62PR5E8TIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTB95TMMUP35EDRMIT33D0NL0SJ5EPKMATQJETKN0PA7CLPN8TBICL9N8OBKCL6M2RJ1CTIN492DDTI6AEO_(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->currentMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIURBFCHIN6TR9EHHMGBQGE9INCQB5ET9NEQBGCL3MASRKELP6AKRKC5Q6AJB1DPGMEPBI4H6MUP357C______:I

    return v0
.end method

.method static synthetic access$102$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRDDTI6ASRND5Q66Q1FA1P6ATJ9CLRL6TR9E1IKEPBJEHQN4PAJEHGN8PADC5N62PR5E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAQ9FDLNM8PBJETKN8OR85T874PBMD5INEKRND5O6AHR5EDQ7ASJ5ADQ62T359LGMSOB7CLP28JBFCHIJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLD4NMQRR4CLPNEQBKCDK2UK3ICLR6IPBNADRMIS358TIN6T3LE9IL6T31EHIKQOBEC5JMASH49LNM8P9R(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;I)I
    .locals 0

    .prologue
    .line 10
    iput p1, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->currentMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIURBFCHIN6TR9EHHMGBQGE9INCQB5ET9NEQBGCL3MASRKELP6AKRKC5Q6AJB1DPGMEPBI4H6MUP357C______:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)F
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->transitionX:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;F)F
    .locals 0

    .prologue
    .line 10
    iput p1, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->transitionX:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)Z
    .locals 1

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->swipeEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->callback:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->setCurrentSwipeState(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;)V

    return-void
.end method

.method private final setCurrentSwipeState(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;)V
    .locals 1

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->currentState:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;

    .line 285
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->currentState:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;->onEnterState()V

    .line 286
    return-void
.end method


# virtual methods
.method public final getCurrentSwipeState()Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->currentState:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;

    return-object v0
.end method

.method public final isInPhotoMode()Z
    .locals 2

    .prologue
    .line 257
    iget v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->currentMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIURBFCHIN6TR9EHHMGBQGE9INCQB5ET9NEQBGCL3MASRKELP6AKRKC5Q6AJB1DPGMEPBI4H6MUP357C______:I

    sget v1, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$Mode;->PHOTO_MODE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIURBFCHIN6TR9EHHMGBQGE9INCQB5ET9NEQBGCL3MASRKELP6AKRKC5Q6AJB1DPGMEPBI4H6MUP357C______:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final resetSwipeState()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 273
    iget v1, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->currentMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIURBFCHIN6TR9EHHMGBQGE9INCQB5ET9NEQBGCL3MASRKELP6AKRKC5Q6AJB1DPGMEPBI4H6MUP357C______:I

    sget v2, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$Mode;->PHOTO_MODE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIURBFCHIN6TR9EHHMGBQGE9INCQB5ET9NEQBGCL3MASRKELP6AKRKC5Q6AJB1DPGMEPBI4H6MUP357C______:I

    if-ne v1, v2, :cond_1

    .line 274
    new-instance v1, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipePhotoState;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipePhotoState;-><init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;B)V

    invoke-direct {p0, v1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->setCurrentSwipeState(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;)V

    .line 280
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->callback:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;

    iget v2, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->currentMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIURBFCHIN6TR9EHHMGBQGE9INCQB5ET9NEQBGCL3MASRKELP6AKRKC5Q6AJB1DPGMEPBI4H6MUP357C______:I

    sget v3, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$Mode;->PHOTO_MODE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIURBFCHIN6TR9EHHMGBQGE9INCQB5ET9NEQBGCL3MASRKELP6AKRKC5Q6AJB1DPGMEPBI4H6MUP357C______:I

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v1, v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;->resetAndHide(Z)V

    .line 281
    return-void

    .line 275
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->currentMode$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIURBFCHIN6TR9EHHMGBQGE9INCQB5ET9NEQBGCL3MASRKELP6AKRKC5Q6AJB1DPGMEPBI4H6MUP357C______:I

    sget v2, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$Mode;->VIDEO_MODE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIURBFCHIN6TR9EHHMGBQGE9INCQB5ET9NEQBGCL3MASRKELP6AKRKC5Q6AJB1DPGMEPBI4H6MUP357C______:I

    if-ne v1, v2, :cond_2

    .line 276
    new-instance v1, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;-><init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;B)V

    invoke-direct {p0, v1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->setCurrentSwipeState(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;)V

    goto :goto_0

    .line 278
    :cond_2
    new-instance v1, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeUnknownState;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeUnknownState;-><init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;B)V

    invoke-direct {p0, v1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->setCurrentSwipeState(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;)V

    goto :goto_0
.end method

.method public final setSwipeEnabled(Z)V
    .locals 0

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->swipeEnabled:Z

    .line 315
    return-void
.end method

.method public final setSwipePhotoState()V
    .locals 2

    .prologue
    .line 292
    new-instance v0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipePhotoState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipePhotoState;-><init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;B)V

    invoke-direct {p0, v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->setCurrentSwipeState(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;)V

    .line 293
    return-void
.end method

.method public final setSwipeVideoState()V
    .locals 2

    .prologue
    .line 299
    new-instance v0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;-><init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;B)V

    invoke-direct {p0, v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->setCurrentSwipeState(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;)V

    .line 300
    return-void
.end method
