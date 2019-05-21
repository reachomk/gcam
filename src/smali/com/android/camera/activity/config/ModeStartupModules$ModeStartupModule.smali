.class public Lcom/android/camera/activity/config/ModeStartupModules$ModeStartupModule;
.super Ljava/lang/Object;
.source "ModeStartupModules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/activity/config/ModeStartupModules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModeStartupModule"
.end annotation


# instance fields
.field private mNestedScrollAxes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 11046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11048
    return-void
.end method


# virtual methods
.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 11070
    iget v0, p0, Lcom/android/camera/activity/config/ModeStartupModules$ModeStartupModule;->mNestedScrollAxes:I

    return v0
.end method

.method public onNestedScrollAccepted$51662RJ4E9NMIP1FEPKMATPFAPKMATPR9HGMSP3IDTKM8BRMD5INEBQMD5INEEQ955B0____(I)V
    .locals 0

    .prologue
    .line 11059
    iput p1, p0, Lcom/android/camera/activity/config/ModeStartupModules$ModeStartupModule;->mNestedScrollAxes:I

    .line 11060
    return-void
.end method

.method public onStopNestedScroll$51662RJ4E9NMIP1FEPKMATPFAPKMATPR55B0____()V
    .locals 1

    .prologue
    .line 11083
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/activity/config/ModeStartupModules$ModeStartupModule;->mNestedScrollAxes:I

    .line 11084
    return-void
.end method
