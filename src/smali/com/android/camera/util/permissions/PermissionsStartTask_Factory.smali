.class public final Lcom/android/camera/util/permissions/PermissionsStartTask_Factory;
.super Ljava/lang/Object;
.source "PermissionsStartTask_Factory.java"

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
.field private final checkerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/permissions/PermissionsChecker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/permissions/PermissionsChecker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/camera/util/permissions/PermissionsStartTask_Factory;->checkerProvider:Ljavax/inject/Provider;

    .line 14
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 7
    .line 1018
    new-instance v1, Lcom/android/camera/util/permissions/PermissionsStartTask;

    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsStartTask_Factory;->checkerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/permissions/PermissionsChecker;

    invoke-direct {v1, v0}, Lcom/android/camera/util/permissions/PermissionsStartTask;-><init>(Lcom/android/camera/util/permissions/PermissionsChecker;)V

    .line 7
    return-object v1
.end method
