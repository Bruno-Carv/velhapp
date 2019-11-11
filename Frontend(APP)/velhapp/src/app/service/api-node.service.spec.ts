import { TestBed } from '@angular/core/testing';

import { ApiNodeService } from './api-node.service';

describe('ApiNodeService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: ApiNodeService = TestBed.get(ApiNodeService);
    expect(service).toBeTruthy();
  });
});
