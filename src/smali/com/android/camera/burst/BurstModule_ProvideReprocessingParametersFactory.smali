.class public final Lcom/android/camera/burst/BurstModule_ProvideReprocessingParametersFactory;
.super Ljava/lang/Object;
.source "BurstModule_ProvideReprocessingParametersFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/camera/burst/BurstModule_ProvideReprocessingParametersFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/android/camera/burst/BurstModule_ProvideReprocessingParametersFactory;

    invoke-direct {v0}, Lcom/android/camera/burst/BurstModule_ProvideReprocessingParametersFactory;-><init>()V

    sput-object v0, Lcom/android/camera/burst/BurstModule_ProvideReprocessingParametersFactory;->INSTANCE:Lcom/android/camera/burst/BurstModule_ProvideReprocessingParametersFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/android/camera/burst/BurstModule_ProvideReprocessingParametersFactory;->INSTANCE:Lcom/android/camera/burst/BurstModule_ProvideReprocessingParametersFactory;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1018
    invoke-static {}, Lcom/android/camera/burst/BurstFacadeStub;->provideReprocessingParameters()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1017
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 9
    return-object v0
.end method
