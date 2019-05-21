.class public final Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFControlFactory;
.super Ljava/lang/Object;
.source "AutoFocusModule_ProvideAFControlFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final apiHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraCharacteristicsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private final implProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

.field private final smartImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/autofocus/AutoFocusModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFControlFactory;->module:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    .line 31
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFControlFactory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFControlFactory;->cameraCharacteristicsProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p4, p0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFControlFactory;->implProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p5, p0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFControlFactory;->smartImplProvider:Ljavax/inject/Provider;

    .line 38
    return-void
.end method

.method public static create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/autofocus/AutoFocusModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFControlFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFControlFactory;-><init>(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 10
    .line 1042
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFControlFactory;->module:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFControlFactory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 1044
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/ApiHelper;

    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFControlFactory;->cameraCharacteristicsProvider:Ljavax/inject/Provider;

    .line 1045
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFControlFactory;->implProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFControlFactory;->smartImplProvider:Ljavax/inject/Provider;

    .line 1043
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule;->provideAFControl(Lcom/android/camera/util/ApiHelper;Lcom/android/camera/one/OneCameraCharacteristics;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/camera/one/v2/autofocus/TouchToFocus;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1042
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/autofocus/TouchToFocus;

    .line 10
    return-object v0
.end method
