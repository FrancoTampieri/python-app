from app import app


def test_index():
    response = app.test_client().get("/")
    assert response.status_code == 200
    assert response.data == b"Hello, DevOps with Python 3.12!"