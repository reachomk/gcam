.class public final Lcom/android/camera/activity/gca/GcaActivityModule_ProvideGcaActivityFactory;
.super Ljava/lang/Object;
.source "GcaActivityModule_ProvideGcaActivityFactory.java"

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
.field private final module:Lcom/android/camera/activity/gca/GcaActivityModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/activity/gca/GcaActivityModule;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/camera/activity/gca/GcaActivityModule_ProvideGcaActivityFactory;->module:Lcom/android/camera/activity/gca/GcaActivityModule;

    .line 14
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 7
    .line 1018
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivityModule_ProvideGcaActivityFactory;->module:Lcom/android/camera/activity/gca/GcaActivityModule;

    .line 1019
    invoke-virtual {v0}, Lcom/android/camera/activity/gca/GcaActivityModule;->provideGcaActivity()Lcom/android/camera/activity/gca/GcaActivity;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1018
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/activity/gca/GcaActivity;

    .line 7
    return-object v0
.end method
