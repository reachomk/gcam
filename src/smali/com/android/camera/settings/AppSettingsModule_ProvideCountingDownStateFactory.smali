.class public final Lcom/android/camera/settings/AppSettingsModule_ProvideCountingDownStateFactory;
.super Ljava/lang/Object;
.source "AppSettingsModule_ProvideCountingDownStateFactory.java"

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
.field private static final INSTANCE:Lcom/android/camera/settings/AppSettingsModule_ProvideCountingDownStateFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/android/camera/settings/AppSettingsModule_ProvideCountingDownStateFactory;

    invoke-direct {v0}, Lcom/android/camera/settings/AppSettingsModule_ProvideCountingDownStateFactory;-><init>()V

    sput-object v0, Lcom/android/camera/settings/AppSettingsModule_ProvideCountingDownStateFactory;->INSTANCE:Lcom/android/camera/settings/AppSettingsModule_ProvideCountingDownStateFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
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
    .line 22
    sget-object v0, Lcom/android/camera/settings/AppSettingsModule_ProvideCountingDownStateFactory;->INSTANCE:Lcom/android/camera/settings/AppSettingsModule_ProvideCountingDownStateFactory;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1267
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 1017
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1016
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Observable;

    .line 8
    return-object v0
.end method
