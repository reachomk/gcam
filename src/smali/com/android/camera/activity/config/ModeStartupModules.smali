.class public Lcom/android/camera/activity/config/ModeStartupModules;
.super Ljava/lang/Object;
.source "ModeStartupModules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;,
        Lcom/android/camera/activity/config/ModeStartupModules$ModeStartupModule;
    }
.end annotation


# instance fields
.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 11028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11029
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 11031
    if-ltz v0, :cond_0

    .line 11033
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/activity/config/ModeStartupModules;->prefix:Ljava/lang/String;

    .line 11034
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 11041
    :goto_0
    return-void

    .line 11038
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/activity/config/ModeStartupModules;->prefix:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getItemOffsets$51662RJ4E9NMIP1FCTP62S38D5HN6BQICLHN8EQ99HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNL4PB3F5HMOPBIAPKMATPR55B0____(Landroid/graphics/Rect;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 10374
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 10375
    return-void
.end method


# virtual methods
.method public getItemOffsets$51662RJ4E9NMIP1FCTP62S38D5HN6BQICLHN8EQCC5N68SJFD5I2UTJ9CLRIULJ9CLRJMJ31DPI74RR9CGNN6TBGE1NN4T1FEORIUTR9CHJMAT1FA9IM6UB3DHIN4LJ9CLRJMJ31DPI74RR9CGNN6TBGE1NN4T1FEORIUTR9CHJMAT1FA9IM6UB3DHIN4LJ9CLRI8KRKC5Q6AEP9AO______(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 10398
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    invoke-static {p1}, Lcom/android/camera/activity/config/ModeStartupModules;->getItemOffsets$51662RJ4E9NMIP1FCTP62S38D5HN6BQICLHN8EQ99HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNL4PB3F5HMOPBIAPKMATPR55B0____(Landroid/graphics/Rect;)V

    .line 10400
    return-void
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11078
    iget-object v0, p0, Lcom/android/camera/activity/config/ModeStartupModules;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public hasPrefix()Z
    .locals 1

    .prologue
    .line 11060
    iget-object v0, p0, Lcom/android/camera/activity/config/ModeStartupModules;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/activity/config/ModeStartupModules;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
